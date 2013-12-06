use openmrs;

-- Admission Form
set @set_concept_id = 0;
select c.concept_id into @set_concept_id from concept c, concept_name cn where cn.name='ADT' and c.concept_id=cn.concept_id and concept_name_type='SHORT';

set @concept_id = 0;
set @answer_concept_id = 0;
set @concept_name_short_id = 0;
set @concept_name_full_id = 0;
set @concept_source_id = 0;
set @concept_map_type_id = 0;

call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Next of kin''s contact number', 'contact_number', 'Text', 'Misc', true);
call add_concept_word(@concept_id, @concept_name_short_id, 'contact_number', 1);

INSERT INTO concept_set (concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (@concept_id,@set_concept_id,0.0,1,now(),uuid());


-- Discharge Form


-- Transfer Form