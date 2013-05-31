-- 1. Delete all attribute 7 for patients which have values for both attribute 7 and 13
-- select person_id, person_attribute_type_id, value from person_attribute where person_id in ( select person_id from (select person_id, count(value) from person_attribute where person_attribute_type_id in (7, 13) group by person_id having count(value) > 1) a) and person_attribute_type_id in (7, 13) order by person_id;
delete from person_attribute where person_attribute_type_id = 7 and person_id in (	select person_id from ( select person_id, count(value) from person_attribute where person_attribute_type_id in (7, 13) group by person_id having count(value) > 1) a);

-- 2. Update the remaining 7s to 13
-- select count(*) from person_attribute where person_attribute_type_id = 7;
update person_attribute set person_attribute_type_id = 13 where person_attribute_type_id = 7;

-- 3. Delete all attribute_tyeps create by openmrs
-- select count(*) from person_attribute where person_attribute_type_id >= 1 and person_attribute_type_id <= 7;
delete from person_attribute_type where person_attribute_type_id >= 1 and person_attribute_type_id <= 7;


-- 4. Verify
select count(*) from person_attribute where person_attribute_type_id = 13 and value IS NULL;
select count(*) from person_attribute where person_attribute_type_id = 7;
