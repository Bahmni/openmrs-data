INSERT INTO event_records (uuid, title, object, category)
  SELECT person.uuid, 'Patient', concat('/openmrs/ws/rest/v1/patient/', person.uuid, '?v=full'), 'patient' from person;