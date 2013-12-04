-- Delete all person_attributes of type healthCenter
delete pa from person_attribute pa
inner join person_attribute_type pat on 
pa.person_attribute_type_id = pat.person_attribute_type_id and
pat.name = 'healthCenter';

-- Delete person_attribute_type healthCenter
delete from person_attribute_type where name = 'healthCenter';