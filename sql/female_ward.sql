-- ward locations
insert into location ( name, description, creator, date_created, uuid ) 
	values ( 'General Ward - Female','This is a General Ward for Female patients that need to be admitted to the Hospital.','1', '2013-10-05 00:00:00', uuid() );

-- mapping ward locations to admission location tag
insert into location_tag_map ( location_id, location_tag_id ) 
	values ((select location_id from location where name = 'General Ward - Female'), (select location_tag_id from location_tag where name = 'Admission Location'));

--  physical space with ward parent location
insert into location ( name, description, creator, date_created, uuid, parent_location) 
	values ( 'Physical Space for General Ward - Female','Physical space','1','2013-10-05 00:00:00', uuid(),
		(SELECT id FROM
			(SELECT location_id as id FROM location where name = 'General Ward - Female')
			AS tmptable)
		);

-- beds
insert into emrapi_bed (bed_number) values ('GF1');
insert into emrapi_bed (bed_number) values ('GF2');
insert into emrapi_bed (bed_number) values ('GF3');
insert into emrapi_bed (bed_number) values ('GF4');
insert into emrapi_bed (bed_number) values ('GF5');
insert into emrapi_bed (bed_number) values ('GF6');
insert into emrapi_bed (bed_number) values ('GF7');
insert into emrapi_bed (bed_number) values ('GF8');
insert into emrapi_bed (bed_number) values ('GF9');
insert into emrapi_bed (bed_number) values ('GF10');
insert into emrapi_bed (bed_number) values ('GF11');
insert into emrapi_bed (bed_number) values ('GF12');
insert into emrapi_bed (bed_number) values ('GF13');
insert into emrapi_bed (bed_number) values ('GF14');
insert into emrapi_bed (bed_number) values ('GF15');
insert into emrapi_bed (bed_number) values ('GF16');
insert into emrapi_bed (bed_number) values ('GF17');
insert into emrapi_bed (bed_number) values ('GF18');
insert into emrapi_bed (bed_number) values ('GF19');
insert into emrapi_bed (bed_number) values ('GF20');
insert into emrapi_bed (bed_number) values ('GF21');
insert into emrapi_bed (bed_number) values ('GF22');
insert into emrapi_bed (bed_number) values ('GF23');
insert into emrapi_bed (bed_number) values ('GF24');
insert into emrapi_bed (bed_number) values ('GF25');
insert into emrapi_bed (bed_number) values ('GF26');
insert into emrapi_bed (bed_number) values ('GF27');
insert into emrapi_bed (bed_number) values ('GF28');
insert into emrapi_bed (bed_number) values ('GF29');
insert into emrapi_bed (bed_number) values ('GF30');

-- bed layout
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','1',(select bed_id from emrapi_bed where bed_number = 'GF14'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','2',(select bed_id from emrapi_bed where bed_number = 'GF13'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','3',(select bed_id from emrapi_bed where bed_number = 'GF12'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','4',(select bed_id from emrapi_bed where bed_number = 'GF11'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','5',(select bed_id from emrapi_bed where bed_number = 'GF10'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','6',(select bed_id from emrapi_bed where bed_number = 'GF9'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','7',(select bed_id from emrapi_bed where bed_number = 'GF8'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','8',(select bed_id from emrapi_bed where bed_number = 'GF7'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','9',(select bed_id from emrapi_bed where bed_number = 'GF6'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'1','10',(select bed_id from emrapi_bed where bed_number = 'GF5'));

insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'2','10',(select bed_id from emrapi_bed where bed_number = 'GF4'));

insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'3','1',(select bed_id from emrapi_bed where bed_number = 'GF21'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'3','2',(select bed_id from emrapi_bed where bed_number = 'GF20'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'3','4',(select bed_id from emrapi_bed where bed_number = 'GF19'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'3','5',(select bed_id from emrapi_bed where bed_number = 'GF18'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'3','6',(select bed_id from emrapi_bed where bed_number = 'GF17'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'3','7',(select bed_id from emrapi_bed where bed_number = 'GF16'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'3','8',(select bed_id from emrapi_bed where bed_number = 'GF15'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'3','10',(select bed_id from emrapi_bed where bed_number = 'GF3'));

insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'4','1',(select bed_id from emrapi_bed where bed_number = 'GF22'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'4','10',(select bed_id from emrapi_bed where bed_number = 'GF2'));

insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','1',(select bed_id from emrapi_bed where bed_number = 'GF23'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','2',(select bed_id from emrapi_bed where bed_number = 'GF24'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','3',(select bed_id from emrapi_bed where bed_number = 'GF25'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','4',(select bed_id from emrapi_bed where bed_number = 'GF26'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','5',(select bed_id from emrapi_bed where bed_number = 'GF27'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','6',(select bed_id from emrapi_bed where bed_number = 'GF28'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','7',(select bed_id from emrapi_bed where bed_number = 'GF29'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','8',(select bed_id from emrapi_bed where bed_number = 'GF30'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Female'),'5','10',(select bed_id from emrapi_bed where bed_number = 'GF1'));

