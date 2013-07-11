set @concept_id = 0;
set @answer_concept_id = 0;
set @concept_name_short_id = 0;
set @concept_name_full_id = 0;

call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Occupation', 'occupation', 'Coded', 'Misc', false);
call add_concept_word(@concept_id, @concept_name_short_id, 'OCCUPATION', '1');
call add_concept_word(@concept_id, @concept_name_full_id, 'OCCUPATION', '1');

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, 'Unemployed', 'unemployed', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'UNEMPLOYED', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'UNEMPLOYED', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 1);

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, 'Student', 'student', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'STUDENT', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'STUDENT', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 2);

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, 'Government', 'government', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'GOVERNMENT', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'GOVERNMENT', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 3);

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, 'Business', 'business', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'BUSINESS', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'BUSINESS', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 4);

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, 'Housewife', 'housewife', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'HOUSEWIFE', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'HOUSEWIFE', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 5);

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, 'Labour', 'labour', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'LABOUR', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'LABOUR', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 6);

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, 'Other', 'other', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'OTHER', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'OTHER', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 7);

UPDATE person_attribute_type SET format = 'org.openmrs.Concept', foreign_key = @concept_id  WHERE name = 'occupation';