select uuid from patient_identifier_type where name = 'JSS' into @uuid;
INSERT INTO global_property (property, uuid, description) values ('emr.primaryIdentifierType', UUID(), 'Primary identifier type for looking up patients, generating barcodes, etc') ON DUPLICATE KEY UPDATE property_value = @uuid;

INSERT INTO concept_reference_source (name, uuid, description, date_created, creator) 
SELECT 'org.openmrs.module.emrapi', UUID(), 'Source used to tag concepts used in the EMR API module', CURDATE(), 1 from dual
where not exists (SELECT * FROM concept_reference_source where name = 'org.openmrs.module.emrapi');
