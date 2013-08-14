update patient set date_changed = date_created,changed_by = creator where date_changed is null ;

INSERT INTO event_records (uuid, title, object, category)
  SELECT person.uuid, 'Patient', concat('/openmrs/ws/rest/v1/patient/', person.uuid, '?v=full'), 'patient'
  FROM person JOIN patient on person_id = patient_id order by patient.date_changed asc;