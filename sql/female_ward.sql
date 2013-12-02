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


-- beds
insert into bed (bed_number, date_created, uuid) values ('GF1', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF2', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF3', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF4', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF5', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF6', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF7', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF8', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF9', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF10', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF11', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF12', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF13', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF14', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF15', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF16', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF17', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF18', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF19', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF20', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF21', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF22', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF23', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF24', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF25', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF26', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF27', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF28', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF29', '2013-10-05 00:00:00', uuid());
insert into bed (bed_number, date_created, uuid) values ('GF30', '2013-10-05 00:00:00', uuid());

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

