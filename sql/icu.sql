-- ward locations
insert into location ( name, description, creator, date_created, uuid ) 
	values ( 'ICU','This is an Intensive Care Unit for patients that are in critical condition.','1', '2013-10-05 00:00:00', uuid() );

-- map ward locations to admission location tag
insert into location_tag_map ( location_id, location_tag_id ) 
	values ((select location_id from location where name = 'ICU'), (select location_tag_id from location_tag where name = 'Admission Location'));

--  physical space with ward parent location
insert into location ( name, description, creator, date_created, uuid, parent_location) 
	values ( 'Physical Space for ICU','Physical space','1','2013-10-05 00:00:00', uuid(),
		(SELECT id FROM
			(SELECT location_id as id FROM location where name = 'ICU')
			AS tmptable)
		);

insert into location_tag_map ( location_id, location_tag_id ) 
	values ((select location_id from location where name = 'Physical Space for ICU'), (select location_tag_id from location_tag where name = 'Admission Location'));


-- beds
insert into bed (bed_number) values ('I1');
insert into bed (bed_number) values ('I2');
insert into bed (bed_number) values ('I3');
insert into bed (bed_number) values ('I4');
insert into bed (bed_number) values ('I5');
insert into bed (bed_number) values ('I6');
insert into bed (bed_number) values ('I7');
insert into bed (bed_number) values ('I8');

-- bed layout
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for ICU'),'1','1',(select bed_id from bed where bed_number = 'I1'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for ICU'),'1','3',(select bed_id from bed where bed_number = 'I2'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for ICU'),'1','5',(select bed_id from bed where bed_number = 'I3'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for ICU'),'1','7',(select bed_id from bed where bed_number = 'I4'));

insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for ICU'),'3','1',(select bed_id from bed where bed_number = 'I8'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for ICU'),'3','3',(select bed_id from bed where bed_number = 'I7'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for ICU'),'3','5',(select bed_id from bed where bed_number = 'I6'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for ICU'),'3','7',(select bed_id from bed where bed_number = 'I5'));
 
