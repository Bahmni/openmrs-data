use openmrs;

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (50001,false,null,null,null,4,1,true,1,now(),null, uuid());
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (50001,50001,'Radiology','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (50001,50001,'Radiology','en',1,11);

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (50011,false,null,null,null,4,1,true,1,now(),null, uuid()); 
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (50011,50011,'XRay','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (50011,50011,'XRay','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (50011,50011,50001,0.0,1,now(),uuid());

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (500111,false,null,null,null,4,1,true,1,now(),null, uuid()); 
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (500111,500111,'Chest','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001111,500111,'Chest','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (500111,500111,50011,0.0,1,now(),uuid());

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (5001111,false,null,null,null,4,1,false,1,now(),null, uuid()); 
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (5001111,5001111,'Chest, 1 view (X-Ray)','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001111,5001111,'Chest, 1 view','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (5001111,5001111,500111,0.0,1,now(),uuid());

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (5001112,false,null,null,null,4,1,false,1,now(),null, uuid()); 
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (5001112,5001112,'Chest, 2 views (X-Ray)','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001112,5001112,'Chest, 2 views','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (5001112,5001112,500111,0.0,1,now(),uuid());

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (5001113,false,null,null,null,4,1,false,1,now(),null, uuid()); 
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (5001113,5001113,'Chest, 4 views (X-Ray)','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001113,5001113,'Chest, 4 views','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (5001113,5001113,500111,0.0,1,now(),uuid());

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (5001114,false,null,null,null,4,1,false,1,now(),null, uuid()); 
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (5001114,5001114,'Chest, lordotic (X-Ray)','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001114,5001114,'Chest, lordotic','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (5001114,5001114,500111,0.0,1,now(),uuid());

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (5001115,false,null,null,null,4,1,false,1,now(),null, uuid()); 
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (5001115,5001115,'Chest, oblique - Bilateral (X-Ray)','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001115,5001115,'Chest, oblique - Bilateral','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (5001115,5001115,500111,0.0,1,now(),uuid());

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (50012,false,null,null,null,4,1,true,1,now(),null, uuid());
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (50012,50012,'MRI Scan','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (500121,50012,'MRI','en',1,11);
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (500122,50011,'Scan','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (50012,50012,50001,0.0,1,now(),uuid());

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (500121,false,null,null,null,4,1,false,1,now(),null, uuid()); 
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (500121,500121,'Head','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001211,500121,'Head','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (500121,500121,50012,0.0,1,now(),uuid());

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (50013,false,null,null,null,4,1,true,1,now(),null, uuid());
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (50013,50013,'CT Scan','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (500131,50013,'CT','en',1,11);
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (500132,50013,'Scan','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (50013,50013,50001,0.0,1,now(),uuid());

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (500131,false,null,null,null,4,1,false,1,now(),null, uuid()); 
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (500131,500131,'Head','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001311,500131,'Head','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (500131,500131,50013,0.0,1,now(),uuid());
