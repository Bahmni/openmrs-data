require 'csv'
require 'securerandom'

@investigations = {}
@category = {}
@tests = {}
@concept_set_map = {}

@file = File.open("sql/other_investigations_data.sql", "w+")
@file.write("set @concept_id = 0;\n")
@file.write("set @answer_concept_id = 0;\n")
@file.write("set @concept_name_short_id = 0;\n")
@file.write("set @concept_name_full_id = 0;\n")
@file.write("select concept_id INTO @other_investigations_concept_id from concept_name where name='Other Investigations' and concept_name_type = 'FULLY_SPECIFIED' and voided = 0;
\n")
@file.write("select concept_id INTO @other_investigations_categories_concept_id from concept_name where name='Other Investigations Categories' and concept_name_type = 'FULLY_SPECIFIED' and voided = 0;
\n")

def add_investigation(concept_name, short_name)
  return if @investigations.has_key?(concept_name)
  @investigations[concept_name] = SecureRandom.hex
  @file.write("call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, '#{concept_name}', '#{short_name}', 'N/A', 'ConvSet', true);\n")
  @file.write("set @investigation_#{@investigations[concept_name]} = @concept_id;\n")
  add_concept_set("@other_investigations_concept_id", "@investigation_#{@investigations[concept_name]}")
end

def add_category(concept_name, short_name)
  return if @category.has_key?(concept_name)
  @category[concept_name] = SecureRandom.hex
  @file.write("call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, '#{concept_name}', '#{short_name}', 'N/A', 'ConvSet', true);\n")
  @file.write("set @category_#{@category[concept_name]} = @concept_id;\n")
  add_concept_set("@other_investigations_categories_concept_id", "@category_#{@category[concept_name]}")
end

def add_test(concept_name, short_name, datatype)
  return if @tests.has_key?(concept_name)
  @tests[concept_name] = SecureRandom.hex
  @file.write("call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, '#{concept_name}', '#{short_name}', '#{datatype}', 'Test', true);\n")
  @file.write("set @test_#{@tests[concept_name]} = @concept_id;\n")
end

def add_concept_set(concept_set_id, concept_id)
  if (@concept_set_map[concept_set_id] && @concept_set_map[concept_set_id][concept_id])
    return
  end
  @concept_set_map[concept_set_id] = @concept_set_map[concept_set_id] || {}
  @concept_set_map[concept_set_id][concept_id] = true
  @file.write("call add_concept_set_members(#{concept_set_id},#{concept_id},1);\n")
end


def add_concept_word(concept_name)
  @file.write("

-- Creating #{concept_name} concept word

set @#{concept_name.downcase}_concept_id = 0;
set @#{concept_name.downcase}_concept_name_id = 0;
set @new_concept_word_id = 0;

select concept.concept_id, concept_name.concept_name_id from concept join concept_name on concept_name.concept_id = concept.concept_id
where concept_name.name = '#{concept_name}' and concept_name.concept_name_type='FULLY_SPECIFIED' INTO @#{concept_name.downcase}_concept_id, @#{concept_name.downcase}_concept_name_id;

select max(concept_word_id) + 1 from concept_word INTO @new_concept_word_id;

select @#{concept_name.downcase}_concept_id, @#{concept_name.downcase}_concept_name_id, @new_concept_word_id;

INSERT INTO concept_word (concept_word_id, concept_id, word, locale, concept_name_id, weight)
            VALUES (@new_concept_word_id, @#{concept_name.downcase}_concept_id, '#{concept_name}', 'en', @#{concept_name.downcase}_concept_name_id, 1);")
end

index = 0

CSV.foreach "csv/other_investigations_data.csv", :headers => true do |row|
  investigation_name = row["Investigation"]
  category_name = row["Category"]
  test_name = row["Test"]

  @file.write("\n--  Row #{index} \n")
  index += 1

  unless(investigation_name.nil?)
    add_investigation(investigation_name, investigation_name.downcase)
  end

  unless(category_name.nil?)
    add_category(category_name, category_name.downcase)
  end

  unless(test_name.nil?)
    add_test(test_name, test_name.downcase, "Numeric")
    add_concept_set("@investigation_#{@investigations[investigation_name]}", "@test_#{@tests[test_name]}")
    add_concept_set("@category_#{@category[category_name]}", "@test_#{@tests[test_name]}")
  end
end

@investigations.keys.each do |investigation_name|
  add_concept_word(investigation_name)
end