-- create app access privileges --
insert into privilege (privilege, description, uuid) values ('app:registration', 'bahmni registration app access privilege', uuid())
ON DUPLICATE KEY UPDATE description = 'bahmni registration app access privilege';

insert into privilege (privilege, description, uuid) values ('app:clinical', 'bahmni clinical app access privilege', uuid())
ON DUPLICATE KEY UPDATE description = 'bahmni clinical app access privilege';

insert into privilege (privilege, description, uuid) values ('app:adt', 'bahmni admission discharge transfer app access privilege', uuid())
ON DUPLICATE KEY UPDATE description = 'bahmni admission discharge transfer app access privilege';

insert into privilege (privilege, description, uuid) values ('app:radiologyOrders', 'bahmni radiology orders access privilege', uuid())
ON DUPLICATE KEY UPDATE description = 'bahmni radiology orders access privilege';
-- end of app access privileges --


-- create sample bahmni roles --
delete from role where role.role = 'bahmni-registration-clerk';
insert into role (role, description, uuid) values ('bahmni-registration-clerk', 'sample representation of role for a registration clerk', uuid());
	
delete from role where role.role = 'bahmni-doctor';
insert into role (role, description, uuid) values ('bahmni-doctor', 'sample representation of role for a doctor', uuid());
	
delete from role where role.role = 'bahmni-ipd-clerk';
insert into role (role, description, uuid) values ('bahmni-ipd-clerk', 'sample representation of role for a ipd clerk doing admission discharge and transfer', uuid());	
	
delete from role where role.role = 'bahmni-nurse';
insert into role (role, description, uuid) values ('bahmni-nurse', 'sample representation of role for a nurse with ability to search and view patient consultation history', uuid());	
-- end of sample bahmni roles --	


-- create role-privileges for bahmni-registration-clerk --
delete from role_privilege where role = 'bahmni-registration-clerk';
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'app:registration');
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'View Users');
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'View Providers');
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'View Visit Types');
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'View Concepts');
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'View Patients');
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'Edit Patients');	
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'View Visits');
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'View People');		
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'Add Visits');
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'Add Patients');
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'Edit Patient Identifiers');
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'View Visit Attribute Types');								
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'View Encounters');
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'Edit Visits');
-- the following 2 privileges are to gaurd against emrapi encounter transactions save, which should have the 2 below	
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'Add Encounters');
insert into role_privilege (role, privilege) values ('bahmni-registration-clerk', 'Edit Encounters');	
-- end of role-privileges for bahmni-registration-clerk --	


-- create role-privileges for bahmni-doctor --
delete from role_privilege where role = 'bahmni-doctor';
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'app:clinical');
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'View Users');
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'View Visit Types');
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'View Providers');
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'View Concepts');
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'View People');
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'View Visits');
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'View Patients');	
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'Add Visits');
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'Edit Visits');
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'View Encounters');
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'View Visit Attribute Types');
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'View Observations');
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'Edit Observations');
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'Add Orders');											
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'Edit Orders');
	
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'app:radiologyOrders');	
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'View Orders');

-- the following 2 privileges are to gaurd against emrapi encounter transactions save, which should have the 2 below	
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'Add Encounters');
insert into role_privilege (role, privilege) values ('bahmni-doctor', 'Edit Encounters');		
-- end of role-privileges for bahmni-doctor --	


-- create role-privileges for bahmni-ipd-clerk --
delete from role_privilege where role = 'bahmni-ipd-clerk';
insert into role_privilege (role, privilege) values ('bahmni-ipd-clerk', 'app:adt');
insert into role_privilege (role, privilege) values ('bahmni-ipd-clerk', 'View Users');	
insert into role_privilege (role, privilege) values ('bahmni-ipd-clerk', 'View Visit Types');
insert into role_privilege (role, privilege) values ('bahmni-ipd-clerk', 'View Providers');	
insert into role_privilege (role, privilege) values ('bahmni-ipd-clerk', 'View Concepts');
insert into role_privilege (role, privilege) values ('bahmni-ipd-clerk', 'View People');
insert into role_privilege (role, privilege) values ('bahmni-ipd-clerk', 'View Patients');
insert into role_privilege (role, privilege) values ('bahmni-ipd-clerk', 'View Visits');
insert into role_privilege (role, privilege) values ('bahmni-ipd-clerk', 'View Encounters');
	
insert into role_privilege (role, privilege) values ('bahmni-ipd-clerk', 'Add Visits');
insert into role_privilege (role, privilege) values ('bahmni-ipd-clerk', 'Edit Visits');
insert into role_privilege (role, privilege) values ('bahmni-ipd-clerk', 'View Visit Attribute Types');		
	
-- the following 2 privileges are to gaurd against emrapi encounter transactions save, which should have the 2 below		
insert into role_privilege (role, privilege) values ('bahmni-ipd-clerk', 'Add Encounters');
insert into role_privilege (role, privilege) values ('bahmni-ipd-clerk', 'Edit Encounters');							
-- end of role-privileges for bahmni-ipd-clerk --
		


-- create role-privileges for bahmni-nurse --
delete from role_privilege where role = 'bahmni-nurse';
insert into role_privilege (role, privilege) values ('bahmni-nurse', 'app:clinical');
insert into role_privilege (role, privilege) values ('bahmni-nurse', 'View Users');
insert into role_privilege (role, privilege) values ('bahmni-nurse', 'View Visit Types');
insert into role_privilege (role, privilege) values ('bahmni-nurse', 'View Providers');
insert into role_privilege (role, privilege) values ('bahmni-nurse', 'View Concepts');
insert into role_privilege (role, privilege) values ('bahmni-nurse', 'View People');
insert into role_privilege (role, privilege) values ('bahmni-nurse', 'View Visits');
insert into role_privilege (role, privilege) values ('bahmni-nurse', 'View Patients');	

	
insert into role_privilege (role, privilege) values ('bahmni-nurse', 'app:radiologyOrders');	
insert into role_privilege (role, privilege) values ('bahmni-nurse', 'View Orders');

-- end of role-privileges for bahmni-nurse --			