-- All patient attributes required
INSERT INTO person_attribute_type (name, description, format, searchable, creator, date_created, retired, sort_weight, uuid) VALUES ('oldPatientIdentifier', 'Old Patient Identifier', 'java.lang.String', '1', 1, curdate(), 0, 1, uuid());
INSERT INTO person_attribute_type (name, description, format, searchable, creator, date_created, retired, sort_weight, uuid) VALUES ('caste', 'Caste', 'java.lang.String', '1', 1, curdate(), 0, 2, uuid());
INSERT INTO person_attribute_type (name, description, format, searchable, creator, date_created, retired, sort_weight, uuid) VALUES ('education', 'Education', 'java.lang.String', '1', 1, curdate(), 0, 3, uuid());
INSERT INTO person_attribute_type (name, description, format, searchable, creator, date_created, retired, sort_weight, uuid) VALUES ('occupation', 'Occupation', 'java.lang.String', '1', 1, curdate(), 0, 4, uuid());
INSERT INTO person_attribute_type (name, description, format, searchable, creator, date_created, retired, sort_weight, uuid) VALUES ('primaryContact', 'Primary Contact', 'java.lang.String', '1', 1, curdate(), 0, 5, uuid());
INSERT INTO person_attribute_type (name, description, format, searchable, creator, date_created, retired, sort_weight, uuid) VALUES ('secondaryContact', 'Secondary Contact', 'java.lang.String', '1', 1, curdate(), 0, 6, uuid());
INSERT INTO person_attribute_type (name, description, format, searchable, creator, date_created, retired, sort_weight, uuid) VALUES ('Health Center', 'Health Center of registered user', 'org.openmrs.Location', '1', 1, curdate(), 0, 7, uuid());
INSERT INTO person_attribute_type (name, description, format, searchable, creator, date_created, retired, sort_weight, uuid) VALUES ('primaryRelative', 'Primary Relative', 'java.lang.String', '1', 1, curdate(), 0, 8, uuid());


-- Default location
INSERT INTO location
(name, description, city_village, county_district, state_province, postal_code, country, creator, retired, uuid, date_created)
  VALUES ('Ganiyari', 'Ganiyari', 'Ganiyari', 'Ganiyari', 'Chattisgarh', '495112', 'India', 1, 0, uuid(), curdate());

INSERT INTO visit_type (name, description, creator, uuid, date_created) VALUES ('REG', 'Regular patient visit', 1, uuid(), curdate());

INSERT INTO encounter_type (name, description, creator, date_created, uuid) VALUES ('REG', 'Registration encounter', 1, curdate(), uuid());

INSERT INTO patient_identifier_type (name, description, creator, date_created, required, uuid, uniqueness_behavior)
  VALUES ('JSS', 'New patient identifier type created for use by the Bahmni Registration System', 1, curdate(), 1, uuid(), 'UNIQUE');

SET @patient_identifier := LAST_INSERT_ID();

INSERT INTO idgen_identifier_source (uuid, name, description, identifier_type, creator, date_created)
  VALUES (uuid(), 'GAN', 'ID sequence source for patients whose primary health center is Ganiyari', @patient_identifier, 1, curdate());
SET @source_id := LAST_INSERT_ID();
INSERT INTO idgen_seq_id_gen (id, next_sequence_value, base_character_set, first_identifier_base, prefix, suffix, length) VALUES (@source_id, 200000, '0123456789', '200000', 'GAN', '', 9);

INSERT INTO idgen_identifier_source (uuid, name, description, identifier_type, creator, date_created)
  VALUES (uuid(), 'SEM', 'ID sequence source for patients whose primary health center is Semariya', @patient_identifier, 1, curdate());
SET @source_id := LAST_INSERT_ID();
INSERT INTO idgen_seq_id_gen (id, next_sequence_value, base_character_set, first_identifier_base, prefix, suffix, length) VALUES (@source_id, 200000, '0123456789', '200000', 'SEM', '', 9);

INSERT INTO idgen_identifier_source (uuid, name, description, identifier_type, creator, date_created)
  VALUES (uuid(), 'SHI', 'ID sequence source for patients whose primary health center is Shivtarai', @patient_identifier, 1, curdate());
SET @source_id := LAST_INSERT_ID();
INSERT INTO idgen_seq_id_gen (id, next_sequence_value, base_character_set, first_identifier_base, prefix, suffix, length) VALUES (@source_id, 200000, '0123456789', '200000', 'SHI', '', 9);

INSERT INTO idgen_identifier_source (uuid, name, description, identifier_type, creator, date_created)
  VALUES (uuid(), 'BAH', 'ID sequence source for patients whose primary health center is Bahmini', @patient_identifier, 1, curdate());
SET @source_id := LAST_INSERT_ID();
INSERT INTO idgen_seq_id_gen (id, next_sequence_value, base_character_set, first_identifier_base, prefix, suffix, length) VALUES (@source_id, 200000, '0123456789', '200000', 'BAH', '', 9);
