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

-- beds
insert into emrapi_bed (bed_number) values ('GM1');
insert into emrapi_bed (bed_number) values ('GM2');
insert into emrapi_bed (bed_number) values ('GM3');
insert into emrapi_bed (bed_number) values ('GM4');
insert into emrapi_bed (bed_number) values ('GM5');
insert into emrapi_bed (bed_number) values ('GM6');
insert into emrapi_bed (bed_number) values ('GM7');
insert into emrapi_bed (bed_number) values ('GM8');
insert into emrapi_bed (bed_number) values ('GM9');
insert into emrapi_bed (bed_number) values ('GM10');
insert into emrapi_bed (bed_number) values ('GM11');
insert into emrapi_bed (bed_number) values ('GM12');
insert into emrapi_bed (bed_number) values ('GM13');
insert into emrapi_bed (bed_number) values ('GM14');
insert into emrapi_bed (bed_number) values ('GM15');
insert into emrapi_bed (bed_number) values ('GM16');
insert into emrapi_bed (bed_number) values ('GM17');
insert into emrapi_bed (bed_number) values ('GM18');
insert into emrapi_bed (bed_number) values ('GM19');
insert into emrapi_bed (bed_number) values ('GM20');
insert into emrapi_bed (bed_number) values ('GM21');
insert into emrapi_bed (bed_number) values ('GM22');
insert into emrapi_bed (bed_number) values ('GM23');
insert into emrapi_bed (bed_number) values ('GM24');
insert into emrapi_bed (bed_number) values ('GM25');
insert into emrapi_bed (bed_number) values ('GM26');
insert into emrapi_bed (bed_number) values ('GM27');
insert into emrapi_bed (bed_number) values ('GM28');
insert into emrapi_bed (bed_number) values ('GM29');
insert into emrapi_bed (bed_number) values ('GM30');

-- bed layout
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','1',(select bed_id from emrapi_bed where bed_number = 'GM5'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','2',(select bed_id from emrapi_bed where bed_number = 'GM6'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','3',(select bed_id from emrapi_bed where bed_number = 'GM7'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','4',(select bed_id from emrapi_bed where bed_number = 'GM8'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','5',(select bed_id from emrapi_bed where bed_number = 'GM9'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','6',(select bed_id from emrapi_bed where bed_number = 'GM10'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','7',(select bed_id from emrapi_bed where bed_number = 'GM11'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','8',(select bed_id from emrapi_bed where bed_number = 'GM12'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','9',(select bed_id from emrapi_bed where bed_number = 'GM13'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'1','10',(select bed_id from emrapi_bed where bed_number = 'GM14'));

insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'2','1',(select bed_id from emrapi_bed where bed_number = 'GM4'));

insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'3','1',(select bed_id from emrapi_bed where bed_number = 'GM3'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'3','3',(select bed_id from emrapi_bed where bed_number = 'GM15'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'3','4',(select bed_id from emrapi_bed where bed_number = 'GM16'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'3','5',(select bed_id from emrapi_bed where bed_number = 'GM17'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'3','6',(select bed_id from emrapi_bed where bed_number = 'GM18'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'3','7',(select bed_id from emrapi_bed where bed_number = 'GM19'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'3','9',(select bed_id from emrapi_bed where bed_number = 'GM20'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'3','10',(select bed_id from emrapi_bed where bed_number = 'GM21'));


insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'4','1',(select bed_id from emrapi_bed where bed_number = 'GM2'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'4','10',(select bed_id from emrapi_bed where bed_number = 'GM22'));

insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','1',(select bed_id from emrapi_bed where bed_number = 'GM1'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','3',(select bed_id from emrapi_bed where bed_number = 'GM30'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','4',(select bed_id from emrapi_bed where bed_number = 'GM29'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','5',(select bed_id from emrapi_bed where bed_number = 'GM28'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','6',(select bed_id from emrapi_bed where bed_number = 'GM27'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','7',(select bed_id from emrapi_bed where bed_number = 'GM26'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','8',(select bed_id from emrapi_bed where bed_number = 'GM25'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','9',(select bed_id from emrapi_bed where bed_number = 'GM24'));
insert into emrapi_bed_location_mapping (location_id ,row_number, column_number, bed_id) 
	values ((select location_id from location where name = 'Physical Space for General Ward - Male'),'5','10',(select bed_id from emrapi_bed where bed_number = 'GM23'));
