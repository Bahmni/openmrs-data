require 'csv'
require 'securerandom'
require 'pg'

@sample_types = {}
@panels = {}
@tests = {}
@concept_set_map = {}

# @openelis_conn = PGconn.open(:host => '10.4.3.3', :dbname => "clinlims", :user => "clinlims")
@openelis_conn = PGconn.open(:dbname => "clinlims", :user => "clinlims")

@result_type_map = {
  "Numeric" => "Numeric",
  "Drop-down" => "Text",
  "Remark" => "Text"
}

@file = File.open("sql/laboratory_data.sql", "w+")
@file.write("set @concept_id = 0;\n")
@file.write("set @answer_concept_id = 0;\n")
@file.write("set @concept_name_short_id = 0;\n")
@file.write("set @concept_name_full_id = 0;\n")
@file.write("set @laboratory_concept_id = (select concept_id from concept_name where name='Laboratory');\n")


def add_sample_type(concept_name, short_name)
  return unless @sample_types[concept_name].nil?
  @sample_types[concept_name] = SecureRandom.hex
  @file.write("call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, '#{concept_name}', '#{short_name}', 'N/A', 'ConvSet', true);\n")
  @file.write("call add_concept_set_members(@laboratory_concept_id, @concept_id, 1);\n")
  @file.write("set @sample_type_#{@sample_types[concept_name]} = @concept_id;\n")
end

def add_panel(concept_name, short_name)
  return unless @panels[concept_name].nil?
  @panels[concept_name] = SecureRandom.hex
  panel_uuid = get_panel_uuid_from_openelis(concept_name)
  @file.write("call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, '#{concept_name}', '#{short_name}', 'N/A', 'LabSet', true);\n")
  @file.write("update concept set uuid = '#{panel_uuid}' where concept_id = @concept_id;\n") if panel_uuid
  @file.write("set @panel_#{@panels[concept_name]} = @concept_id;\n")
end

def add_test(concept_name, short_name, datatype)
  return unless @tests[concept_name].nil?
  @tests[concept_name] = SecureRandom.hex
  test_uuid = get_test_uuid_from_openelis(concept_name)
  @file.write("call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, '#{concept_name}', '#{short_name}', '#{datatype}', 'Test', false);\n")
  @file.write("update concept set uuid = '#{test_uuid}' where concept_id = @concept_id;\n") if test_uuid
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

def get_panel_uuid_from_openelis(name)
  res = @openelis_conn.exec("select external_id from external_reference where type='Panel' and item_id=(select id from panel where name='#{name}')")
  return res.getvalue(0,0) if res.values.size > 0
end

def get_test_uuid_from_openelis(name)
  res = @openelis_conn.exec("select external_id from external_reference where type='Test' and item_id=(select id from test where name='#{name}')")
  return res.getvalue(0,0) if res.values.size > 0
end

index = 0
CSV.foreach "csv/lab_data.csv", :headers => true do |row|
  sample_type_name = row["Sample TYPE"]
  panel_name = row["PANEL"]
  test_name = row["TEST"]
  short_code = row["Short CODE"]
  result_type = row["Result Type"]

  @file.write("\n--  Row #{index} \n")
  index += 1

  puts "Adding Sample #{sample_type_name}"
  add_sample_type(sample_type_name, sample_type_name.downcase)

  puts "Adding Panel #{panel_name}"
  if(!panel_name.nil?)
    add_panel(panel_name, panel_name.downcase)
    if(!sample_type_name.nil?)
      add_concept_set("@sample_type_#{@sample_types[sample_type_name]}", "@panel_#{@panels[panel_name]}")
    end
  end

  puts "Adding Test #{test_name}"
  add_test(test_name, short_code || test_name.downcase, @result_type_map[result_type])
  if(!panel_name.nil?)
    add_concept_set("@panel_#{@panels[panel_name]}", "@test_#{@tests[test_name]}")
  elsif (!sample_type_name.nil?)
    add_concept_set("@sample_type_#{@sample_types[sample_type_name]}", "@test_#{@tests[test_name]}")
  end
end