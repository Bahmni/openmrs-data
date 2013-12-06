--  admission location tag 
insert into location_tag ( name, description, creator, date_created, uuid ) 
	values ( 'Admission Location', 'When a user is selecting a ward to admit a patient, they may choose one with this tag', '1', '2013-10-05 00:00:00', uuid() );

-- bed types
insert into bed_type (bed_type_id, name, display_name, description) values(101, "General Bed", "General Bed", "This is the general bed type");
insert into bed_type (bed_type_id, name, display_name, description) values(102, "ICU Bed", "ICU Bed", "This is the icu bed type");

----------- ICU ----------- 
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
insert into bed (bed_number, bed_type_id, date_created, uuid) values ('I1', 102, '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, bed_type_id, date_created, uuid) values ('I2', 102, '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, bed_type_id, date_created, uuid) values ('I3', 102, '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, bed_type_id, date_created, uuid) values ('I4', 102, '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, bed_type_id, date_created, uuid) values ('I5', 102, '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, bed_type_id, date_created, uuid) values ('I6', 102, '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, bed_type_id, date_created, uuid) values ('I7', 102, '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, bed_type_id, date_created, uuid) values ('I8', 102, '2013-10-05 00:00:00', uuid());

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
 
----------- ICU ----------- 

-------------- First ward -------------- 
-- ward locations
insert into location ( name, description, creator, date_created, uuid ) 
	values ( 'First Ward','This is for the surgical patients that need special care.','1', '2013-10-05 00:00:00', uuid() );

-- mapping ward locations to admission location tag
insert into location_tag_map ( location_id, location_tag_id ) 
	values ((select location_id from location where name = 'First Ward'), (select location_tag_id from location_tag where name = 'Admission Location'));

--  physical space with ward parent location
insert into location ( name, description, creator, date_created, uuid, parent_location) 
	values ( 'Physical Space for First Ward','Physical space','1','2013-10-05 00:00:00', uuid(),
		(SELECT id FROM
			(SELECT location_id as id FROM location where name = 'First Ward')
			AS tmptable)
		);

insert into location_tag_map ( location_id, location_tag_id ) 
	values ((select location_id from location where name = 'Physical Space for First Ward'), (select location_tag_id from location_tag where name = 'Admission Location'));

-- beds
insert into bed (bed_number, bed_type_id) values ('Bed 11', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 12', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 13', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 14', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 15', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 21', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 22', 101);

-- bed layout
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for First Ward'),'1','1',(select bed_id from bed where bed_number = 'Bed 11'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for First Ward'),'1','2',(select bed_id from bed where bed_number = 'Bed 12'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for First Ward'),'1','3',(select bed_id from bed where bed_number = 'Bed 13'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for First Ward'),'1','4',(select bed_id from bed where bed_number = 'Bed 14'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for First Ward'),'1','5',(select bed_id from bed where bed_number = 'Bed 15'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for First Ward'),'2','4',(select bed_id from bed where bed_number = 'Bed 21'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for First Ward'),'2','5',(select bed_id from bed where bed_number = 'Bed 22'));

-------------- first ward -------------- 


-------------- second ward -------------- 

-- ward locations
insert into location ( name, description, creator, date_created, uuid ) 
	values ( 'Second Ward','This is for the surgical patients that need special care.','1', '2013-10-05 00:00:00', uuid() );

-- mapping ward locations to admission location tag
insert into location_tag_map ( location_id, location_tag_id ) 
	values ((select location_id from location where name = 'Second Ward'), (select location_tag_id from location_tag where name = 'Admission Location'));

--  physical space with ward parent location
insert into location ( name, description, creator, date_created, uuid, parent_location) 
	values ( 'Physical Space for Second Ward','Physical space','1','2013-10-05 00:00:00', uuid(),
		(SELECT id FROM
			(SELECT location_id as id FROM location where name = 'Second Ward')
			AS tmptable)
		);

insert into location_tag_map ( location_id, location_tag_id ) 
	values ((select location_id from location where name = 'Physical Space for Second Ward'), (select location_tag_id from location_tag where name = 'Admission Location'));

-- beds
insert into bed (bed_number, bed_type_id) values ('Bed 211', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 212', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 213', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 214', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 215', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 216', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 217', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 218', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 222', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 223', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 224', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 225', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 226', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 227', 101);
insert into bed (bed_number, bed_type_id) values ('Bed 228', 101);

-- bed layout
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for Second Ward'),'1','1',(select bed_id from bed where bed_number = 'Bed 211'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for Second Ward'),'1','2',(select bed_id from bed where bed_number = 'Bed 212'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for Second Ward'),'1','3',(select bed_id from bed where bed_number = 'Bed 213'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for Second Ward'),'1','4',(select bed_id from bed where bed_number = 'Bed 214'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for Second Ward'),'1','5',(select bed_id from bed where bed_number = 'Bed 215'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for Second Ward'),'1','6',(select bed_id from bed where bed_number = 'Bed 216'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for Second Ward'),'1','7',(select bed_id from bed where bed_number = 'Bed 217'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for Second Ward'),'1','8',(select bed_id from bed where bed_number = 'Bed 218'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for Second Ward'),'2','2',(select bed_id from bed where bed_number = 'Bed 222'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for Second Ward'),'2','3',(select bed_id from bed where bed_number = 'Bed 223'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for Second Ward'),'2','4',(select bed_id from bed where bed_number = 'Bed 224'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for Second Ward'),'2','5',(select bed_id from bed where bed_number = 'Bed 225'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for Second Ward'),'2','6',(select bed_id from bed where bed_number = 'Bed 226'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for Second Ward'),'2','7',(select bed_id from bed where bed_number = 'Bed 227'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for Second Ward'),'2','8',(select bed_id from bed where bed_number = 'Bed 228'));


-------------- second ward -------------- 

-------------- female ward -------------- 

-- ward locations
insert into location ( name, description, creator, date_created, uuid ) 
	values ( 'General Ward - Female','This is a General Ward for Female patients that need to be admitted to the Hospital.','1', '2013-10-05 00:00:00', uuid() );

-- map ward locations to admission location tag
insert into location_tag_map ( location_id, location_tag_id ) 
	values ((select location_id from location where name = 'General Ward - Female'), (select location_tag_id from location_tag where name = 'Admission Location'));

--  physical space with ward parent location
insert into location ( name, description, creator, date_created, uuid, parent_location) 
	values ( 'Physical Space for General Ward - Female','Physical space','1','2013-10-05 00:00:00', uuid(),
		(SELECT id FROM
			(SELECT location_id as id FROM location where name = 'General Ward - Female')
			AS tmptable)
		);

	-- map physical locations to admission location tag
insert into location_tag_map ( location_id, location_tag_id ) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'), (select location_tag_id from location_tag where name = 'Admission Location'));


-- bed types
insert into bed_type (bed_type_id, name, display_name, description) values(101, "General", "General Bed Type", "This is the general bed types");


-- beds
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF1', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF2', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF3', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF4', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF5', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF6', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF7', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF8', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF9', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF10', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF11', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF12', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF13', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF14', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF15', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF16', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF17', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF18', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF19', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF20', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF21', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF22', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF23', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF24', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF25', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF26', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF27', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF28', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF29', '2013-10-05 00:00:00', uuid(), 101);
insert into bed (bed_number, date_created, uuid, bed_type_id) values ('GF30', '2013-10-05 00:00:00', uuid(), 101);

-- bed layout
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','1',(select bed_id from bed where bed_number = 'GF14'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','2',(select bed_id from bed where bed_number = 'GF13'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','3',(select bed_id from bed where bed_number = 'GF12'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','4',(select bed_id from bed where bed_number = 'GF11'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','5',(select bed_id from bed where bed_number = 'GF10'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','6',(select bed_id from bed where bed_number = 'GF9'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','7',(select bed_id from bed where bed_number = 'GF8'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','8',(select bed_id from bed where bed_number = 'GF7'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','9',(select bed_id from bed where bed_number = 'GF6'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','10',(select bed_id from bed where bed_number = 'GF5'));

insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'2','10',(select bed_id from bed where bed_number = 'GF4'));

insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'3','1',(select bed_id from bed where bed_number = 'GF21'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'3','2',(select bed_id from bed where bed_number = 'GF20'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'3','4',(select bed_id from bed where bed_number = 'GF19'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'3','5',(select bed_id from bed where bed_number = 'GF18'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'3','6',(select bed_id from bed where bed_number = 'GF17'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'3','7',(select bed_id from bed where bed_number = 'GF16'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'3','8',(select bed_id from bed where bed_number = 'GF15'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'3','10',(select bed_id from bed where bed_number = 'GF3'));

insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'4','1',(select bed_id from bed where bed_number = 'GF22'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'4','10',(select bed_id from bed where bed_number = 'GF2'));

insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','1',(select bed_id from bed where bed_number = 'GF23'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','2',(select bed_id from bed where bed_number = 'GF24'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','3',(select bed_id from bed where bed_number = 'GF25'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','4',(select bed_id from bed where bed_number = 'GF26'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','5',(select bed_id from bed where bed_number = 'GF27'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','6',(select bed_id from bed where bed_number = 'GF28'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','7',(select bed_id from bed where bed_number = 'GF29'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','8',(select bed_id from bed where bed_number = 'GF30'));
insert into bed_location_map (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','10',(select bed_id from bed where bed_number = 'GF1'));

-------------- female ward -------------- 

-------------- male ward -------------- 

-- ward locations
insert into location ( name, description, creator, date_created, uuid ) 
	values ( 'General Ward - Male','This is a General Ward for Male patients that need to be admitted to the Hospital.','1', '2013-10-05 00:00:00', uuid() );

-- mapping ward locations to admission location tag
insert into location_tag_map ( location_id, location_tag_id ) 
	values ((select location_id from location where name = 'General Ward - Male'), (select location_tag_id from location_tag where name = 'Admission Location'));

--  physical space with ward parent location
insert into location ( name, description, creator, date_created, uuid, parent_location) 
	values ( 'Physical Space for General Ward - Male','Physical space','1','2013-10-05 00:00:00', uuid(),
		(SELECT id FROM
			(SELECT location_id as id FROM location where name = 'General Ward - Male')
			AS tmptable)
		);

-- bed types
insert into bed_type (bed_type_id, name, display_name, description) values(102, "General", "General Bed Type", "This is the general bed types");

-- beds
insert into bed (bed_number, bed_type_id) values ('GM1', 101);
insert into bed (bed_number, bed_type_id) values ('GM2', 101);
insert into bed (bed_number, bed_type_id) values ('GM3', 101);
insert into bed (bed_number, bed_type_id) values ('GM4', 101);
insert into bed (bed_number, bed_type_id) values ('GM5', 101);
insert into bed (bed_number, bed_type_id) values ('GM6', 101);
insert into bed (bed_number, bed_type_id) values ('GM7', 101);
insert into bed (bed_number, bed_type_id) values ('GM8', 101);
insert into bed (bed_number, bed_type_id) values ('GM9', 101);
insert into bed (bed_number, bed_type_id) values ('GM10', 101);
insert into bed (bed_number, bed_type_id) values ('GM11', 101);
insert into bed (bed_number, bed_type_id) values ('GM12', 101);
insert into bed (bed_number, bed_type_id) values ('GM13', 101);
insert into bed (bed_number, bed_type_id) values ('GM14', 101);
insert into bed (bed_number, bed_type_id) values ('GM15', 101);
insert into bed (bed_number, bed_type_id) values ('GM16', 101);
insert into bed (bed_number, bed_type_id) values ('GM17', 101);
insert into bed (bed_number, bed_type_id) values ('GM18', 101);
insert into bed (bed_number, bed_type_id) values ('GM19', 101);
insert into bed (bed_number, bed_type_id) values ('GM20', 101);
insert into bed (bed_number, bed_type_id) values ('GM21', 101);
insert into bed (bed_number, bed_type_id) values ('GM22', 101);
insert into bed (bed_number, bed_type_id) values ('GM23', 101);
insert into bed (bed_number, bed_type_id) values ('GM24', 101);
insert into bed (bed_number, bed_type_id) values ('GM25', 101);
insert into bed (bed_number, bed_type_id) values ('GM26', 101);
insert into bed (bed_number, bed_type_id) values ('GM27', 101);
insert into bed (bed_number, bed_type_id) values ('GM28', 101);
insert into bed (bed_number, bed_type_id) values ('GM29', 101);
insert into bed (bed_number, bed_type_id) values ('GM30', 101);

-- bed layout
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','1',(select bed_id from bed where bed_number = 'GM5'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','2',(select bed_id from bed where bed_number = 'GM6'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','3',(select bed_id from bed where bed_number = 'GM7'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','4',(select bed_id from bed where bed_number = 'GM8'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','5',(select bed_id from bed where bed_number = 'GM9'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','6',(select bed_id from bed where bed_number = 'GM10'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','7',(select bed_id from bed where bed_number = 'GM11'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','8',(select bed_id from bed where bed_number = 'GM12'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','9',(select bed_id from bed where bed_number = 'GM13'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','10',(select bed_id from bed where bed_number = 'GM14'));

insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'2','1',(select bed_id from bed where bed_number = 'GM4'));

insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'3','1',(select bed_id from bed where bed_number = 'GM3'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'3','3',(select bed_id from bed where bed_number = 'GM15'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'3','4',(select bed_id from bed where bed_number = 'GM16'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'3','5',(select bed_id from bed where bed_number = 'GM17'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'3','6',(select bed_id from bed where bed_number = 'GM18'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'3','7',(select bed_id from bed where bed_number = 'GM19'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'3','9',(select bed_id from bed where bed_number = 'GM20'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'3','10',(select bed_id from bed where bed_number = 'GM21'));


insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'4','1',(select bed_id from bed where bed_number = 'GM2'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'4','10',(select bed_id from bed where bed_number = 'GM22'));

insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','1',(select bed_id from bed where bed_number = 'GM1'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','3',(select bed_id from bed where bed_number = 'GM30'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','4',(select bed_id from bed where bed_number = 'GM29'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','5',(select bed_id from bed where bed_number = 'GM28'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','6',(select bed_id from bed where bed_number = 'GM27'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','7',(select bed_id from bed where bed_number = 'GM26'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','8',(select bed_id from bed where bed_number = 'GM25'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','9',(select bed_id from bed where bed_number = 'GM24'));
insert into bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','10',(select bed_id from bed where bed_number = 'GM23'));

-------------- male ward -------------- 