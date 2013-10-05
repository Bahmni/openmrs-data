require 'csv'
require 'securerandom'

@investigations = {}
@level_one = {}
@level_two = {}
@tests = {}
@concept_set_map = {}

@file = File.open("sql/radiology_data.sql", "w+")
@file.write("set @concept_id = 0;\n")
@file.write("set @answer_concept_id = 0;\n")
@file.write("set @concept_name_short_id = 0;\n")
@file.write("set @concept_name_full_id = 0;\n")


def add_investigation(concept_name, short_name)
  return unless @investigations[concept_name].nil?
  @investigations[concept_name] = SecureRandom.hex
  @file.write("call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, '#{concept_name}', '#{short_name}', 'N/A', 'ConvSet', true);\n")
  @file.write("set @investigation_#{@investigations[concept_name]} = @concept_id;\n")
end

def add_level_one(concept_name, short_name)
  return unless @level_one[concept_name].nil?
  @level_one[concept_name] = SecureRandom.hex
  @file.write("call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, '#{concept_name}', '#{short_name}', 'N/A', 'ConvSet', true);\n")
  @file.write("set @level_one_#{@level_one[concept_name]} = @concept_id;\n")
end

def add_level_two(concept_name, short_name)
  return unless @level_two[concept_name].nil?
  @level_two[concept_name] = SecureRandom.hex
  @file.write("call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, '#{concept_name}', '#{short_name}', 'N/A', 'ConvSet', true);\n")
  @file.write("set @level_two_#{@level_two[concept_name]} = @concept_id;\n")
end

def add_test(concept_name, short_name, datatype)
  return unless @tests[concept_name].nil?
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

index = 0
CSV.foreach "csv/radiology_data.csv", :headers => true do |row|
  investigation_name = row["Investigation"]
  level_one_name = row["Level1"]
  level_two_name = row["Level2"]
  test_name = row["Test"]

  @file.write("\n--  Row #{index} \n")
  index += 1

  unless(investigation_name.nil?)
    add_investigation(investigation_name, investigation_name.downcase)
  end

  unless(level_one_name.nil?)
    add_level_one(level_one_name, level_one_name.downcase)
    add_concept_set("@investigation_#{@investigations[investigation_name]}", "@level_one_#{@level_one[level_one_name]}")
  end

  unless(level_two_name.nil?)
    add_level_two(level_two_name, level_two_name.downcase)
    add_concept_set("@level_one_#{@level_one[level_one_name]}", "@level_two_#{@level_two[level_two_name]}")
  end

  unless(test_name.nil?)
    add_test(test_name, test_name.downcase, "Numeric")
    add_concept_set("@level_two_#{@level_two[level_two_name]}", "@test_#{@tests[test_name]}")
  end
end