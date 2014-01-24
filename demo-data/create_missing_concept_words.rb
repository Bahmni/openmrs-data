require 'csv'

# all this script does is to create concept words relevant to concept and concept_name
# to do this. execute the sql below and save output rows in windows comma separated file 
# and replace existing content of "csv/missing_concept_words.csv"
# with the headers in order  -> concept_id, name, concept_name_id, cw_concept_id
# the output will be generate SQLs in "sql/missing_concept_words.sql", execute them in db client.

# select c.concept_id, cn.name, cn.concept_name_id, cw.concept_id as cw_concept_id
# from concept c inner join concept_name cn on cn.concept_id = c.concept_id
# left outer join concept_word cw on cw.concept_id = c.concept_id  
# order by cw_concept_id;

@file = File.open("sql/missing_concept_words.sql", "w+")

def generate_concept_word_script(word, concept_id, concept_name_id)
  concept_word = word.gsub('(','').gsub(')','').gsub(',','').gsub('-','').gsub('.','')
  concept_word.strip!
  return if concept_word.empty?
  stored_proc_call_str = "call add_concept_word(%s, %s, '%s', '1'); \n" % [concept_id,concept_name_id,concept_word.upcase]
  @file.write(stored_proc_call_str);
end

CSV.foreach "csv/missing_concept_words.csv", :headers => true do |row|
  existing_concept_id = row["concept_id"]
  existing_concept_name = row["name"]
  existing_concept_name_id = row["concept_name_id"]
  cw_concept_id = row["cw_concept_id"]

  unless cw_concept_id.upcase == "NULL" 
    next
  end

  words = existing_concept_name.split
  words.each {|word| generate_concept_word_script(word, existing_concept_id, existing_concept_name_id) }
end

@file.close
