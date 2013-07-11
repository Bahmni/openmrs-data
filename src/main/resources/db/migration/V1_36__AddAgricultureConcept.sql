set @concept_id = 0;
set @answer_concept_id = 0;
set @concept_name_short_id = 0;
set @concept_name_full_id = 0;

SELECT foreign_key INTO @concept_id FROM person_attribute_type WHERE name = 'occupation';

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, 'Agriculture', 'agriculture', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'AGRICULTURE', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'AGRICULTURE', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 1);
