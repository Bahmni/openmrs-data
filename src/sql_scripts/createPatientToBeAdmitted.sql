delimiter //

drop procedure if exists `bahmni_create_patient_to_admit` //

create procedure bahmni_create_patient_to_admit(_firstName varchar(50), _lastName varchar(50), inout _patientIdentifiers text, out _thisPatientIdentifier varchar(50))
begin
/* USAGE
    set @_ids = "";
    call bahmni_create_patient_to_admit("jhamu", "sughand", @_ids, @_thisId);
    select @_thisId;
    call bahmni_create_patient_to_admit("dharam", "paaji", @_ids, @_thisId);
    select @_thisId;
    select @_ids;
*/
	DECLARE _now datetime;
	DECLARE _newId int;
	DECLARE _personId int;
	DECLARE _visitId int;
	DECLARE _encounterId int;
	DECLARE _personUUID char(38);
	DECLARE _visitUUID char(38);
	DECLARE _encounterUUID char(38);

declare _admitEncounterUUID varchar(38);
declare _admitObservationUUID varchar(38);
declare _admitObservationWithAdmissionNoteUUID varchar(38);
declare _anotherAdmitObservationUUID varchar(38);
declare _admitDatetime datetime;
declare _admitEncounterId int;
declare _dispositionSetConceptId int;
declare _dispositionNoteConceptId int;
declare _dispositionConceptId int;
declare _admitPatientConceptId int;
declare _admitObservationId int;

	set _now = now();
	set _personUUID = uuid();
	set _visitUUID = uuid();
	set _encounterUUID = uuid();

	select next_sequence_value into _newId from idgen_seq_id_gen where id = 1;
	update idgen_seq_id_gen set next_sequence_value = _newId + 1 where id = 1;
	set _thisPatientIdentifier = concat('GAN', _newId);
	set _patientIdentifiers = concat(_patientIdentifiers, ',', _thisPatientIdentifier);

	insert into idgen_log_entry (source, identifier, date_generated, generated_by, comment) values (1, _thisPatientIdentifier, _now, 1, 'Bahmni Registration App');

	insert into person (uuid, gender, birthdate, birthdate_estimated, dead, death_date, cause_of_death, creator, date_created, changed_by, date_changed, voided, voided_by, date_voided, void_reason) values (_personUUID, 'M', '1963-10-04 00:00:00.0', 1, 0, null, null, 1, _now, null, null, 0, null, null, null);
	select person_id into _personId from person where uuid=_personUUID;
	insert into patient (creator, date_created, changed_by, date_changed, voided, voided_by, date_voided, void_reason, patient_id) values (1, _now, 1, _now, 0, null, null, null, _personId);
	insert into person_address (uuid, person_id, address1, address2, city_village, state_province, postal_code, country, latitude, longitude, county_district, address3, address4, address6, address5, creator, date_created, voided_by, date_voided, void_reason, voided, preferred, changed_by, date_changed, start_date, end_date) values (uuid(), _personId, null, null, 'Bangalore', null, null, null, null, null, null, null, null, null, null, 1, _now, null, null, null, 0, 1, 1, _now, null, null);
	insert into person_name (uuid, preferred, person_id, prefix, given_name, middle_name, family_name_prefix, family_name, family_name2, family_name_suffix, degree, creator, date_created, changed_by, date_changed, voided_by, date_voided, void_reason, voided) values (uuid(), 0, _personId, null, _firstName, null, null, _lastName, null, null, null, 1, _now, 1, _now, null, null, null, 0);
	insert into person_attribute (uuid, person_id, person_attribute_type_id, value, creator, date_created, changed_by, date_changed, voided_by, date_voided, voided, void_reason) values (uuid(), _personId, 13, '2', 1, _now, 1, _now, null, null, 0, null);
	insert into patient_identifier (uuid, patient_id, identifier, identifier_type, location_id, date_created, date_voided, preferred, voided, void_reason, creator, voided_by, changed_by, date_changed) values (uuid(), _personId, _thisPatientIdentifier, 3, null, _now, null, 1, 0, null, 1, null, 1, _now);

	insert into event_records (uuid, title, uri, object,category) values (uuid(), 'Patient', null, concat('/openmrs/ws/rest/v1/patient/', _personUUID, '?v=full'),'patient');

	insert into visit (date_started, date_stopped, date_created, voided, date_voided, void_reason, date_changed, uuid, visit_type_id, patient_id, indication_concept_id, location_id, creator, changed_by, voided_by) values (_now, null, _now, 0, null, null, _now, _visitUUID, 1, _personId, null, null, 1, 1, null);
	select visit_id into _visitId from visit where uuid=_visitUUID;
	insert into encounter (uuid, encounter_datetime, date_created, voided, date_voided, void_reason, date_changed, changed_by, patient_id, location_id, form_id, encounter_type, creator, voided_by, visit_id) values (_encounterUUID, _now, _now, 0, null, null, _now, 1, _personId, null, null, 1, 1, null, _visitId);
	select encounter_id into _encounterId from encounter where uuid=_encounterUUID;
	insert into obs (uuid, obs_datetime, value_group_id, value_datetime, value_numeric, value_modifier, value_text, value_complex, comments, accession_number, date_created, voided, date_voided, void_reason, person_id, concept_id, value_coded, value_coded_name_id, value_drug, order_id, location_id, encounter_id, creator, voided_by, obs_group_id, previous_version) values (uuid(), _now, null, null, 10.0, null, null, null, null, null, _now, 0, null, null, _personId, 4, null, null, null, null, null, _encounterId, 1, null, null, null);
	


set _admitEncounterUUID = uuid();
set _admitObservationUUID = uuid();
set _admitObservationWithAdmissionNoteUUID = uuid();
set _anotherAdmitObservationUUID = uuid();
set _admitDatetime = now();

insert into encounter (uuid, encounter_datetime, date_created, voided, date_voided, void_reason, date_changed, changed_by, patient_id, location_id, form_id, encounter_type, creator, voided_by, visit_id) values (_admitEncounterUUID, _admitDatetime, _admitDatetime, 0, null, null, _admitDatetime, 1, _personId, null, null, 2, 1, null, _visitId);

select encounter_id into _admitEncounterId from encounter where uuid=_admitEncounterUUID;

select distinct concept_id into _dispositionSetConceptId from concept_name where name ='Disposition Set';
select distinct concept_id into _dispositionNoteConceptId from concept_name where name ='Disposition Note';
select distinct concept_id into _dispositionConceptId from concept_name where name ='Disposition';
select distinct concept_id into _admitPatientConceptId from concept_name where name ='Admit Patient';

insert into obs (uuid, obs_datetime, value_group_id, value_datetime, value_numeric, value_modifier, value_text, value_complex, comments, accession_number, date_created, voided, date_voided, void_reason, person_id, concept_id, value_coded, value_coded_name_id, value_drug, order_id, location_id, encounter_id, creator, voided_by, obs_group_id, previous_version) values (_admitObservationUUID, _admitDatetime, null, null, null, null, null, null, null, null, _admitDatetime, 0, null, null, _personId, _dispositionSetConceptId, null, null, null, null, null, _admitEncounterId, 1, null, null, null);

select obs_id into _admitObservationId from obs where uuid = _admitObservationUUID;

insert into obs (uuid, obs_datetime, value_group_id, value_datetime, value_numeric, value_modifier, value_text, value_complex, comments, accession_number, date_created, voided, date_voided, void_reason, person_id, concept_id, value_coded, value_coded_name_id, value_drug, order_id, location_id, encounter_id, creator, voided_by, obs_group_id, previous_version) values (_admitObservationWithAdmissionNoteUUID, _admitDatetime, null, null, null, null, 'admit this patient to emergency.', null, null, null, _admitDatetime, 0, null, null, _personId, _dispositionNoteConceptId, null, null, null, null, null, _admitEncounterId, 1, null, _admitObservationId, null);

insert into obs (uuid, obs_datetime, value_group_id, value_datetime, value_numeric, value_modifier, value_text, value_complex, comments, accession_number, date_created, voided, date_voided, void_reason, person_id, concept_id, value_coded, value_coded_name_id, value_drug, order_id, location_id, encounter_id, creator, voided_by, obs_group_id, previous_version) values (_anotherAdmitObservationUUID, _admitDatetime, null, null, null, null, null, null, null, null, _admitDatetime, 0, null, null, _personId, _dispositionConceptId, _admitPatientConceptId, null, null, null, null, _admitEncounterId, 1, null, _admitObservationId, null);


end//

delimiter ;

