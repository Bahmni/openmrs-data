-- All patient attributes required
insert into person_attribute_type (name, description, format, searchable, creator, date_created, retired, sort_weight, uuid) values ('oldPatientIdentifier', 'Old Patient Identifier', 'java.lang.String', '1', 1, curdate(), 0, 1, uuid());
insert into person_attribute_type (name, description, format, searchable, creator, date_created, retired, sort_weight, uuid) values ('caste', 'Caste', 'java.lang.String', '1', 1, curdate(), 0, 2, uuid());
insert into person_attribute_type (name, description, format, searchable, creator, date_created, retired, sort_weight, uuid) values ('education', 'Education', 'java.lang.String', '1', 1, curdate(), 0, 3, uuid());
insert into person_attribute_type (name, description, format, searchable, creator, date_created, retired, sort_weight, uuid) values ('occupation', 'Occupation', 'java.lang.String', '1', 1, curdate(), 0, 4, uuid());
insert into person_attribute_type (name, description, format, searchable, creator, date_created, retired, sort_weight, uuid) values ('primaryContact', 'Primary Contact', 'java.lang.String', '1', 1, curdate(), 0, 5, uuid());
insert into person_attribute_type (name, description, format, searchable, creator, date_created, retired, sort_weight, uuid) values ('secondaryContact', 'Secondary Contact', 'java.lang.String', '1', 1, curdate(), 0, 6, uuid());
insert into person_attribute_type (name, description, format, searchable, creator, date_created, retired, sort_weight, uuid) values ('Health Center', 'Health Center of registered user', 'org.openmrs.Location', '1', 1, curdate(), 0, 7, uuid());
insert into person_attribute_type (name, description, format, searchable, creator, date_created, retired, sort_weight, uuid) values ('primaryRelative', 'Primary Relative', 'java.lang.String', '1', 1, curdate(), 0, 8, uuid());


-- Default location
insert into location
(name, description, city_village, county_district, state_province, postal_code, country, creator, retired, uuid, date_created)
values
('Ganiyari', 'Ganiyari', 'Ganiyari', 'Ganiyari', 'Chattisgarh', '495112', 'India', 1, 0, uuid(), curdate());

insert into visit_type (name, description, creator, uuid, date_created) values('REG', 'Regular patient visit', 1, uuid(), curdate());

insert into encounter_type (name, description, creator, date_created, uuid) values('REG', 'Registration encounter', 1, curdate(), uuid());

insert into patient_identifier_type(name, description, creator, uuid, date_created) values('RaxaEMR Identifier Number', 'RaxaEMR Identifier Number', 1, uuid(), curdate());