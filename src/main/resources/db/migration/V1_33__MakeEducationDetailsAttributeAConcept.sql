set @concept_id = 0;
set @answer_concept_id = 0;
set @concept_name_short_id = 0;
set @concept_name_full_id = 0;

call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Education Details', 'education', 'Coded', 'Misc', false);
call add_concept_word(@concept_id, @concept_name_short_id, 'EDUCATION', '1');
call add_concept_word(@concept_id, @concept_name_full_id, 'EDUCATION', '1');
call add_concept_word(@concept_id, @concept_name_full_id, 'DETAILS', '1');

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, 'Uneducated', 'uneducated', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'UNEDUCATED', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'UNEDUCATED', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 1);

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, '5th Pass and Below', 'below-5th', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, '5TH', '1');
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'BELOW', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, '5TH', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'AND', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'BELOW', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 2);

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, '6th to 9th', '6th-9th', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, '6TH', '1');
call add_concept_word(@answer_concept_id, @concept_name_short_id, '9TH', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, '6TH', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'TO', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, '9TH', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 3);

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, '10th pass', '10th-pass', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, '10TH', '1');
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'PASS', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, '10TH', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'PASS', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 4);

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, '12th pass', '12th-pass', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, '12TH', '1');
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'PASS', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, '12TH', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'PASS', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 5);

call add_concept(@answer_concept_id, @concept_name_short_id, @concept_name_full_id, 'Graduate and Above', 'graduate', 'Text', 'Misc', false);
call add_concept_word(@answer_concept_id, @concept_name_short_id, 'GRADUATE', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'GRADUATE', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'AND', '1');
call add_concept_word(@answer_concept_id, @concept_name_full_id, 'ABOVE', '1');
call add_concept_answer(@concept_id, @answer_concept_id, 6);

UPDATE person_attribute_type SET format = 'org.openmrs.Concept', foreign_key = @concept_id  WHERE name = 'education';