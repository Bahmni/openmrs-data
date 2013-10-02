-- JSS specific. Do not move to registration omod

INSERT INTO global_property (property,property_value,description,uuid) 
VALUES ('emr.primaryIdentifierType','05a29f94-c0ed-11e2-94be-8c13b969e334','Primary identifier type for looking up patients, generating barcodes, etc','a18e17c8-8557-434d-bbfc-24bf25432fb3');


UPDATE patient_identifier_type SET uuid='05a29f94-c0ed-11e2-94be-8c13b969e334' WHERE name = 'JSS';