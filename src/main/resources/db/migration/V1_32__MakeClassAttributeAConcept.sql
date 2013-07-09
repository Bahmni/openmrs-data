set @concept_id = 0;
set @answer_concept_id = 0;
set @concept_name_short_id = 0;
set @concept_name_full_id = 0;

call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Class', 'class', 'Coded', 'Misc', false);
call add_concept_word(@concept_id, @concept_name_short_id, 'CLASS', '1');
call add_concept_word(@concept_id, @concept_name_full_id, 'CLASS', '1');

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, 'OBC', 'obc', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'OBC', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'OBC', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 1);

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, 'General', 'general', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'GENERAL', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'general', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 2);

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, 'SC', 'sc', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'SC', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'sc', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 3);

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, 'ST', 'st', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'ST', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'st', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 4);

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, 'Other', 'other', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'OTHER', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'OTHER', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 5);

UPDATE person_attribute_type SET format = 'org.openmrs.Concept', foreign_key = @concept_id  WHERE name = 'class';