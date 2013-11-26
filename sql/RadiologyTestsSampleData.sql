use openmrs;

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (50001,false,null,null,null,4,1,true,1,now(),null, uuid());
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (50001,50001,'Radiology','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (50001,50001,'Radiology','en',1,11);

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (50011,false,null,null,null,4,1,true,1,now(),null, uuid()); 
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (50011,50011,'XRay','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (500111,50011,'XRay','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (50011,50011,50001,0.0,1,now(),uuid());

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (500111,false,null,null,null,4,1,false,1,now(),null, uuid()); 
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (500111,500111,'XRay Right Hand','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001111,500111,'XRay','en',1,11);
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001112,500111,'Right','en',1,11);
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001113,500111,'Hand','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (500111,500111,50011,0.0,1,now(),uuid());

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (500112,false,null,null,null,4,1,false,1,now(),null, uuid()); 
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (500112,500112,'XRay Left Hand','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001121,500112,'XRay','en',1,11);
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001122,500112,'Left','en',1,11);
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001123,500112,'Hand','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (500112,500112,50011,0.0,1,now(),uuid());

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (50012,false,null,null,null,4,1,true,1,now(),null, uuid());
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (50012,50012,'MRI Scan','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (500121,50012,'MRI','en',1,11);
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (500122,50011,'Scan','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (50012,50012,50001,0.0,1,now(),uuid());

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (500121,false,null,null,null,4,1,false,1,now(),null, uuid()); 
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (500121,500121,'MRI Right Hand','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001211,500121,'MRI','en',1,11);
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001212,500121,'Right','en',1,11);
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001213,500121,'Hand','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (500121,500121,50012,0.0,1,now(),uuid());

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (50013,false,null,null,null,4,1,true,1,now(),null, uuid());
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (50013,50013,'CT Scan','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (500131,50013,'CT','en',1,11);
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (500132,50013,'Scan','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (50013,50013,50001,0.0,1,now(),uuid());

INSERT INTO concept (concept_id,retired,short_name,description,form_text,datatype_id,class_id,is_set,creator,date_created,version, uuid) VALUES (500131,false,null,null,null,4,1,false,1,now(),null, uuid()); 
INSERT INTO concept_name (concept_name_id,concept_id,name,locale,locale_preferred,creator,date_created,concept_name_type,voided,voided_by,date_voided,void_reason,uuid) VALUES (500131,500131,'CT Right Hand','en',false,1,now(),'FULLY_SPECIFIED',false,null,null,null,uuid());
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001311,500131,'CT','en',1,11);
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001312,500131,'Right','en',1,11);
INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (5001313,500131,'Hand','en',1,11);
INSERT INTO concept_set (concept_set_id,concept_id,concept_set,sort_weight,creator,date_created,uuid) VALUES (500131,500131,50013,0.0,1,now(),uuid());



INSERT INTO concept_word (concept_word_id,concept_id,word,locale,concept_name_id,weight) VALUES (274,110,'URINE','en',136,9.66);


INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units) VALUES (104,90.0,80.0,70.0,40.0,50.0,60.0,'kg');
INSERT INTO concept_numeric (concept_id,hi_absolute,hi_critical,hi_normal,low_absolute,low_critical,low_normal,units) VALUES (108,9.0,8.0,7.0,4.0,5.0,6.0,'kk');