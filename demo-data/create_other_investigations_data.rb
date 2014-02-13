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
  concept_name.split(' ').each{|word| 
      @file.write("call add_concept_word(@concept_id, @concept_name_short_id, '#{word.upcase}', 1);\n")
    }
  @file.write("set @investigation_#{@investigations[concept_name]} = @concept_id;\n")
  add_concept_set("@other_investigations_concept_id", "@investigation_#{@investigations[concept_name]}")
end

def add_category(concept_name, short_name)
  return if @category.has_key?(concept_name)
  @category[concept_name] = SecureRandom.hex
  @file.write("call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, '#{concept_name}', '#{short_name}', 'N/A', 'ConvSet', true);\n")
  concept_name.split(' ').each{|word| 
      @file.write("call add_concept_word(@concept_id, @concept_name_short_id, '#{word.upcase}', 1);\n")
    }
  @file.write("set @category_#{@category[concept_name]} = @concept_id;\n")
  add_concept_set("@other_investigations_categories_concept_id", "@category_#{@category[concept_name]}")
end

def add_test(concept_name, short_name, datatype)
  return if @tests.has_key?(concept_name)
  @tests[concept_name] = SecureRandom.hex
  @file.write("call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, '#{concept_name}', '#{short_name}', '#{datatype}', 'Test', true);\n")
  concept_name.split(' ').each{|word| 
      @file.write("call add_concept_word(@concept_id, @concept_name_short_id, '#{word.upcase}', 1);\n")
    }
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

def add_order_type(investigation_name)
  order_type_name = "#{investigation_name} Order"
  @file.write("
-- Create order_type : #{order_type_name}

INSERT INTO order_type (name,description,creator,date_created,uuid) 
SELECT '#{order_type_name}','An order for #{investigation_name.downcase} tests',1,now(),uuid() FROM (SELECT 1) t
WHERE NOT EXISTS (SELECT * from order_type where name = '#{order_type_name}');
\n")
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
    add_test(test_name, test_name.downcase, "Text")
    add_concept_set("@investigation_#{@investigations[investigation_name]}", "@test_#{@tests[test_name]}")
    add_concept_set("@category_#{@category[category_name]}", "@test_#{@tests[test_name]}")
  end
end