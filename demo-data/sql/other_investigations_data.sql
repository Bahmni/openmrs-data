set @concept_id = 0;
set @answer_concept_id = 0;
set @concept_name_short_id = 0;
set @concept_name_full_id = 0;
select concept_id INTO @other_investigations_concept_id from concept_name where name='Other Investigations' and concept_name_type = 'FULLY_SPECIFIED' and voided = 0;

select concept_id INTO @other_investigations_categories_concept_id from concept_name where name='Other Investigations Categories' and concept_name_type = 'FULLY_SPECIFIED' and voided = 0;


--  Row 0 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Radiology', 'radiology', 'N/A', 'ConvSet', true);
set @investigation_d44133575d862559a975ae485237a4e1 = @concept_id;
call add_concept_set_members(@other_investigations_concept_id,@investigation_d44133575d862559a975ae485237a4e1,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest', 'chest', 'N/A', 'ConvSet', true);
set @category_62827712f485ce140de57640daaf2513 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_62827712f485ce140de57640daaf2513,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest, 1 view (X-ray)', 'chest, 1 view (x-ray)', 'Numeric', 'Test', true);
set @test_e2dc8125ab45cb542c3cc44b4b422183 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_e2dc8125ab45cb542c3cc44b4b422183,1);
call add_concept_set_members(@category_62827712f485ce140de57640daaf2513,@test_e2dc8125ab45cb542c3cc44b4b422183,1);

--  Row 1 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Spine', 'spine', 'N/A', 'ConvSet', true);
set @category_dc54a763349804ebca21b099b0bf51e2 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_dc54a763349804ebca21b099b0bf51e2,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Spine, 1 view (X-ray)', 'spine, 1 view (x-ray)', 'Numeric', 'Test', true);
set @test_7db4ff8695838841340eced5a4f5ce52 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_7db4ff8695838841340eced5a4f5ce52,1);
call add_concept_set_members(@category_dc54a763349804ebca21b099b0bf51e2,@test_7db4ff8695838841340eced5a4f5ce52,1);

--  Row 2 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Pelvis', 'pelvis', 'N/A', 'ConvSet', true);
set @category_307fc7267d976cdb85380025f65bd87d = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_307fc7267d976cdb85380025f65bd87d,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Pelvis, 1 view (X-ray)', 'pelvis, 1 view (x-ray)', 'Numeric', 'Test', true);
set @test_1147481390c63c0d54bcf961963b6802 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_1147481390c63c0d54bcf961963b6802,1);
call add_concept_set_members(@category_307fc7267d976cdb85380025f65bd87d,@test_1147481390c63c0d54bcf961963b6802,1);

--  Row 3 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Abdomen', 'abdomen', 'N/A', 'ConvSet', true);
set @category_3f2783bd98a82f6cc7d8c0411aae7912 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_3f2783bd98a82f6cc7d8c0411aae7912,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Abdomen, 1 view (X-ray)', 'abdomen, 1 view (x-ray)', 'Numeric', 'Test', true);
set @test_8a9c40f8305e52f3c485829fc44caf97 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_8a9c40f8305e52f3c485829fc44caf97,1);
call add_concept_set_members(@category_3f2783bd98a82f6cc7d8c0411aae7912,@test_8a9c40f8305e52f3c485829fc44caf97,1);

--  Row 4 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Knee', 'knee', 'N/A', 'ConvSet', true);
set @category_d507345281f3bd2fd7a2dc6b396858fb = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_d507345281f3bd2fd7a2dc6b396858fb,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Knee - Left, 1 or 2 views (X-ray)', 'knee - left, 1 or 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_af9c2cdceb9df9449c9e442495d6901c = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_af9c2cdceb9df9449c9e442495d6901c,1);
call add_concept_set_members(@category_d507345281f3bd2fd7a2dc6b396858fb,@test_af9c2cdceb9df9449c9e442495d6901c,1);

--  Row 5 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Knee - Right, 1 or 2 views (X-ray)', 'knee - right, 1 or 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_40a548b720f7a68eecd24733457cf554 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_40a548b720f7a68eecd24733457cf554,1);
call add_concept_set_members(@category_d507345281f3bd2fd7a2dc6b396858fb,@test_40a548b720f7a68eecd24733457cf554,1);

--  Row 6 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest, 2 views (X-ray)', 'chest, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_673009a4e5b88ffcd6697932b04df0a9 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_673009a4e5b88ffcd6697932b04df0a9,1);
call add_concept_set_members(@category_62827712f485ce140de57640daaf2513,@test_673009a4e5b88ffcd6697932b04df0a9,1);

--  Row 7 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hip', 'hip', 'N/A', 'ConvSet', true);
set @category_9d02daee1bd5833c83632e003ed489b8 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_9d02daee1bd5833c83632e003ed489b8,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hip - Left, 2 views (X-ray)', 'hip - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_37b44d819cb840d9029c27fab6944e4c = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_37b44d819cb840d9029c27fab6944e4c,1);
call add_concept_set_members(@category_9d02daee1bd5833c83632e003ed489b8,@test_37b44d819cb840d9029c27fab6944e4c,1);

--  Row 8 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hand', 'hand', 'N/A', 'ConvSet', true);
set @category_5b83e0762201a7cf5737df49227de411 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_5b83e0762201a7cf5737df49227de411,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hand - Left, 2 views (X-ray)', 'hand - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_c6e3d2347c4d2c5346bcdf4ecf70d6e9 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_c6e3d2347c4d2c5346bcdf4ecf70d6e9,1);
call add_concept_set_members(@category_5b83e0762201a7cf5737df49227de411,@test_c6e3d2347c4d2c5346bcdf4ecf70d6e9,1);

--  Row 9 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hip - Right, 2 views (X-ray)', 'hip - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_d20ebd8de8f5c63814dde1dfbee52b58 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_d20ebd8de8f5c63814dde1dfbee52b58,1);
call add_concept_set_members(@category_9d02daee1bd5833c83632e003ed489b8,@test_d20ebd8de8f5c63814dde1dfbee52b58,1);

--  Row 10 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ribs', 'ribs', 'N/A', 'ConvSet', true);
set @category_5299ba829c1bd5ae5848d25a929730bb = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_5299ba829c1bd5ae5848d25a929730bb,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ribs - Left, 2 views (X-ray)', 'ribs - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_103b418f1c7510e547984a227603e773 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_103b418f1c7510e547984a227603e773,1);
call add_concept_set_members(@category_5299ba829c1bd5ae5848d25a929730bb,@test_103b418f1c7510e547984a227603e773,1);

--  Row 11 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Leg', 'leg', 'N/A', 'ConvSet', true);
set @category_84c85d0c1ff06bafba40c2d07c85eae4 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_84c85d0c1ff06bafba40c2d07c85eae4,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Foot - Left, 2 views (X-ray)', 'foot - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_e4870b6cb508aa568128bb2101019160 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_e4870b6cb508aa568128bb2101019160,1);
call add_concept_set_members(@category_84c85d0c1ff06bafba40c2d07c85eae4,@test_e4870b6cb508aa568128bb2101019160,1);

--  Row 12 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Femur - Left, 2 views (X-ray)', 'femur - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_5b54215829be3c519777836505755cb0 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_5b54215829be3c519777836505755cb0,1);
call add_concept_set_members(@category_84c85d0c1ff06bafba40c2d07c85eae4,@test_5b54215829be3c519777836505755cb0,1);

--  Row 13 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ribs - Right, 2 views (X-ray)', 'ribs - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_ae6c926773a42a065b576b82d737194b = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_ae6c926773a42a065b576b82d737194b,1);
call add_concept_set_members(@category_5299ba829c1bd5ae5848d25a929730bb,@test_ae6c926773a42a065b576b82d737194b,1);

--  Row 14 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Foot - Right, 2 views (X-ray)', 'foot - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_b4730a2422ef8220f2f509a5839e1bea = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_b4730a2422ef8220f2f509a5839e1bea,1);
call add_concept_set_members(@category_84c85d0c1ff06bafba40c2d07c85eae4,@test_b4730a2422ef8220f2f509a5839e1bea,1);

--  Row 15 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Arm', 'arm', 'N/A', 'ConvSet', true);
set @category_f9a379cfd48aa9f0cb0fae65758461c1 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_f9a379cfd48aa9f0cb0fae65758461c1,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Elbow - Left, 2 views (X-ray)', 'elbow - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_047c2f8f2270826d87cb700a0e7b4bab = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_047c2f8f2270826d87cb700a0e7b4bab,1);
call add_concept_set_members(@category_f9a379cfd48aa9f0cb0fae65758461c1,@test_047c2f8f2270826d87cb700a0e7b4bab,1);

--  Row 16 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hand - Right, 2 views (X-ray)', 'hand - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_8a27fe304e1e434f8d8c5143635477b2 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_8a27fe304e1e434f8d8c5143635477b2,1);
call add_concept_set_members(@category_f9a379cfd48aa9f0cb0fae65758461c1,@test_8a27fe304e1e434f8d8c5143635477b2,1);

--  Row 17 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Wrist - Left, 2 views (X-ray)', 'wrist - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_d0c05399a61364e8c6a4ae7ac7aecc62 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_d0c05399a61364e8c6a4ae7ac7aecc62,1);
call add_concept_set_members(@category_f9a379cfd48aa9f0cb0fae65758461c1,@test_d0c05399a61364e8c6a4ae7ac7aecc62,1);

--  Row 18 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Elbow - Right, 2 views (X-ray)', 'elbow - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_ce5ae079cbde8d401cd5e42befd1f0b9 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_ce5ae079cbde8d401cd5e42befd1f0b9,1);
call add_concept_set_members(@category_f9a379cfd48aa9f0cb0fae65758461c1,@test_ce5ae079cbde8d401cd5e42befd1f0b9,1);

--  Row 19 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Wrist - Right, 2 views (X-ray)', 'wrist - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_946d1fe54b2d56737ca45cb39c03d8f1 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_946d1fe54b2d56737ca45cb39c03d8f1,1);
call add_concept_set_members(@category_f9a379cfd48aa9f0cb0fae65758461c1,@test_946d1fe54b2d56737ca45cb39c03d8f1,1);

--  Row 20 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Femur - Right, 2 views (X-ray)', 'femur - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_9697056910335e56ed377654c35c8d40 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_9697056910335e56ed377654c35c8d40,1);
call add_concept_set_members(@category_84c85d0c1ff06bafba40c2d07c85eae4,@test_9697056910335e56ed377654c35c8d40,1);

--  Row 21 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Forearm - Left, 2 views (X-ray)', 'forearm - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_c411667f719cde7299f2bf609bd1a9fc = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_c411667f719cde7299f2bf609bd1a9fc,1);
call add_concept_set_members(@category_f9a379cfd48aa9f0cb0fae65758461c1,@test_c411667f719cde7299f2bf609bd1a9fc,1);

--  Row 22 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Humerus - Left, 2 views (X-ray)', 'humerus - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_6084705e48eb5613eb4605fa09cbea0a = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_6084705e48eb5613eb4605fa09cbea0a,1);
call add_concept_set_members(@category_f9a379cfd48aa9f0cb0fae65758461c1,@test_6084705e48eb5613eb4605fa09cbea0a,1);

--  Row 23 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Lumbar spine, 2 or 3 views (X-ray)', 'lumbar spine, 2 or 3 views (x-ray)', 'Numeric', 'Test', true);
set @test_8eb037fc3a12664d7bcd79f86227a99e = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_8eb037fc3a12664d7bcd79f86227a99e,1);
call add_concept_set_members(@category_dc54a763349804ebca21b099b0bf51e2,@test_8eb037fc3a12664d7bcd79f86227a99e,1);

--  Row 24 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Forearm - Right, 2 views (X-ray)', 'forearm - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_5c71a36d0762eed53dab450e95da95d8 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_5c71a36d0762eed53dab450e95da95d8,1);
call add_concept_set_members(@category_f9a379cfd48aa9f0cb0fae65758461c1,@test_5c71a36d0762eed53dab450e95da95d8,1);

--  Row 25 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Shoulder', 'shoulder', 'N/A', 'ConvSet', true);
set @category_3c00d27fe06af580c8844e63cf7ed0ca = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_3c00d27fe06af580c8844e63cf7ed0ca,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Clavicle - Left, 2 views (X-ray)', 'clavicle - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_e2dc7de4978890d63c804b1911b313b0 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_e2dc7de4978890d63c804b1911b313b0,1);
call add_concept_set_members(@category_3c00d27fe06af580c8844e63cf7ed0ca,@test_e2dc7de4978890d63c804b1911b313b0,1);

--  Row 26 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Humerus - Right, 2 views (X-ray)', 'humerus - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_de6d44b03e2d6357eeb31e539208a639 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_de6d44b03e2d6357eeb31e539208a639,1);
call add_concept_set_members(@category_f9a379cfd48aa9f0cb0fae65758461c1,@test_de6d44b03e2d6357eeb31e539208a639,1);

--  Row 27 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Shoulder - Left, 2 views (X-ray)', 'shoulder - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_2621ea1f91281e7a2716d8965fb0f655 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_2621ea1f91281e7a2716d8965fb0f655,1);
call add_concept_set_members(@category_3c00d27fe06af580c8844e63cf7ed0ca,@test_2621ea1f91281e7a2716d8965fb0f655,1);

--  Row 28 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Shoulder - Right, 2 views (X-ray)', 'shoulder - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_13362148fbb276860b160f5fd016394a = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_13362148fbb276860b160f5fd016394a,1);
call add_concept_set_members(@category_3c00d27fe06af580c8844e63cf7ed0ca,@test_13362148fbb276860b160f5fd016394a,1);

--  Row 29 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Lower leg - Left, 2 views (X-ray)', 'lower leg - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_fe2625530a56ba939636110cb2c1a955 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_fe2625530a56ba939636110cb2c1a955,1);
call add_concept_set_members(@category_84c85d0c1ff06bafba40c2d07c85eae4,@test_fe2625530a56ba939636110cb2c1a955,1);

--  Row 30 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Calcaneus - Left, 2 views (X-ray)', 'calcaneus - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_32b12b004bf93e061eacf486b7f42126 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_32b12b004bf93e061eacf486b7f42126,1);
call add_concept_set_members(@category_84c85d0c1ff06bafba40c2d07c85eae4,@test_32b12b004bf93e061eacf486b7f42126,1);

--  Row 31 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Thoracic spine, 2 views (X-ray)', 'thoracic spine, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_98bd85d8eeaa9049fccc4158e95ffe5e = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_98bd85d8eeaa9049fccc4158e95ffe5e,1);
call add_concept_set_members(@category_dc54a763349804ebca21b099b0bf51e2,@test_98bd85d8eeaa9049fccc4158e95ffe5e,1);

--  Row 32 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Clavicle - Right, 2 views (X-ray)', 'clavicle - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_4aef953ebc2a47d098b248fd8a95f544 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_4aef953ebc2a47d098b248fd8a95f544,1);
call add_concept_set_members(@category_3c00d27fe06af580c8844e63cf7ed0ca,@test_4aef953ebc2a47d098b248fd8a95f544,1);

--  Row 33 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Lower leg - Right, 2 views (X-ray)', 'lower leg - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_bc824d32a2411a06d02777676573e3ae = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_bc824d32a2411a06d02777676573e3ae,1);
call add_concept_set_members(@category_84c85d0c1ff06bafba40c2d07c85eae4,@test_bc824d32a2411a06d02777676573e3ae,1);

--  Row 34 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Calcaneus - Right, 2 views (X-ray)', 'calcaneus - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_ca7557095abeb85c8fbb87f0ed6ec192 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_ca7557095abeb85c8fbb87f0ed6ec192,1);
call add_concept_set_members(@category_84c85d0c1ff06bafba40c2d07c85eae4,@test_ca7557095abeb85c8fbb87f0ed6ec192,1);

--  Row 35 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Cervical spine, 2 or 3 views (X-ray)', 'cervical spine, 2 or 3 views (x-ray)', 'Numeric', 'Test', true);
set @test_8a73c5b1be20d7ca1f668a9d249776ba = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_8a73c5b1be20d7ca1f668a9d249776ba,1);
call add_concept_set_members(@category_dc54a763349804ebca21b099b0bf51e2,@test_8a73c5b1be20d7ca1f668a9d249776ba,1);

--  Row 36 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Thoracic and lumbar spine, 2 views (X-ray)', 'thoracic and lumbar spine, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_0a44476dc2fccb74a76fa82a8c0fd006 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_0a44476dc2fccb74a76fa82a8c0fd006,1);
call add_concept_set_members(@category_dc54a763349804ebca21b099b0bf51e2,@test_0a44476dc2fccb74a76fa82a8c0fd006,1);

--  Row 37 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Face', 'face', 'N/A', 'ConvSet', true);
set @category_5b5fae60649d8c0bde542edd956f084b = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_5b5fae60649d8c0bde542edd956f084b,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Sinuses, 3 views (X-ray)', 'sinuses, 3 views (x-ray)', 'Numeric', 'Test', true);
set @test_db9b24d3b5ab74352bf8d9ac50c5c65f = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_db9b24d3b5ab74352bf8d9ac50c5c65f,1);
call add_concept_set_members(@category_5b5fae60649d8c0bde542edd956f084b,@test_db9b24d3b5ab74352bf8d9ac50c5c65f,1);

--  Row 38 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Facial bones, 3 views (X-ray)', 'facial bones, 3 views (x-ray)', 'Numeric', 'Test', true);
set @test_602663f364d83c338584107f341082e5 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_602663f364d83c338584107f341082e5,1);
call add_concept_set_members(@category_5b5fae60649d8c0bde542edd956f084b,@test_602663f364d83c338584107f341082e5,1);

--  Row 39 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Head', 'head', 'N/A', 'ConvSet', true);
set @category_c65a1d2dd374721f3397bd4623a78974 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_c65a1d2dd374721f3397bd4623a78974,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Skull, 4 views (X-ray)', 'skull, 4 views (x-ray)', 'Numeric', 'Test', true);
set @test_0a5e17b7b040ccc12cdb531fbcc3f295 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_0a5e17b7b040ccc12cdb531fbcc3f295,1);
call add_concept_set_members(@category_c65a1d2dd374721f3397bd4623a78974,@test_0a5e17b7b040ccc12cdb531fbcc3f295,1);

--  Row 40 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest, 4 views (X-ray)', 'chest, 4 views (x-ray)', 'Numeric', 'Test', true);
set @test_ccd807ab2e0384bae5dae507b3eafa15 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_ccd807ab2e0384bae5dae507b3eafa15,1);
call add_concept_set_members(@category_62827712f485ce140de57640daaf2513,@test_ccd807ab2e0384bae5dae507b3eafa15,1);

--  Row 41 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Mandible panorex (X-ray) ', 'mandible panorex (x-ray) ', 'Numeric', 'Test', true);
set @test_825c5a9f97bf00863f7baa6c2c39535a = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_825c5a9f97bf00863f7baa6c2c39535a,1);
call add_concept_set_members(@category_5b5fae60649d8c0bde542edd956f084b,@test_825c5a9f97bf00863f7baa6c2c39535a,1);

--  Row 42 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest lordotic (X-ray) ', 'chest lordotic (x-ray) ', 'Numeric', 'Test', true);
set @test_3097ae7451caccd1c62471b38cd0f46e = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_3097ae7451caccd1c62471b38cd0f46e,1);
call add_concept_set_members(@category_62827712f485ce140de57640daaf2513,@test_3097ae7451caccd1c62471b38cd0f46e,1);

--  Row 43 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest oblique - Bilateral (X-ray) ', 'chest oblique - bilateral (x-ray) ', 'Numeric', 'Test', true);
set @test_ebce59694509409ef795617adcbbfa10 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_ebce59694509409ef795617adcbbfa10,1);
call add_concept_set_members(@category_62827712f485ce140de57640daaf2513,@test_ebce59694509409ef795617adcbbfa10,1);

--  Row 44 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Other', 'other', 'N/A', 'ConvSet', true);
set @category_6f587e13cfb2a964c1319644b9d39f2c = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_6f587e13cfb2a964c1319644b9d39f2c,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Kidney retrograde pyelogram (X-ray) ', 'kidney retrograde pyelogram (x-ray) ', 'Numeric', 'Test', true);
set @test_5979fc8df148999c8e93328b36450ccc = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_5979fc8df148999c8e93328b36450ccc,1);
call add_concept_set_members(@category_6f587e13cfb2a964c1319644b9d39f2c,@test_5979fc8df148999c8e93328b36450ccc,1);

--  Row 45 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Acromioclavicular joints - Bilateral (X-ray) ', 'acromioclavicular joints - bilateral (x-ray) ', 'Numeric', 'Test', true);
set @test_b13691175b216d1522cf4a5f98227ee8 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_b13691175b216d1522cf4a5f98227ee8,1);
call add_concept_set_members(@category_3c00d27fe06af580c8844e63cf7ed0ca,@test_b13691175b216d1522cf4a5f98227ee8,1);

--  Row 46 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Abdomen AP (supine and lateraldecubitus) (X-ray) ', 'abdomen ap (supine and lateraldecubitus) (x-ray) ', 'Numeric', 'Test', true);
set @test_ff7fbf6971a0966e9b1116df76461069 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_ff7fbf6971a0966e9b1116df76461069,1);
call add_concept_set_members(@category_3f2783bd98a82f6cc7d8c0411aae7912,@test_ff7fbf6971a0966e9b1116df76461069,1);

--  Row 47 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ankle - Left, 3 views (X-ray)', 'ankle - left, 3 views (x-ray)', 'Numeric', 'Test', true);
set @test_2cd5bf05c53b70ca6370bf6632750410 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_2cd5bf05c53b70ca6370bf6632750410,1);
call add_concept_set_members(@category_84c85d0c1ff06bafba40c2d07c85eae4,@test_2cd5bf05c53b70ca6370bf6632750410,1);

--  Row 48 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ankle - Right, 3 views (X-ray)', 'ankle - right, 3 views (x-ray)', 'Numeric', 'Test', true);
set @test_45a9db080e9594efae2ed8c012ec4cb3 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_45a9db080e9594efae2ed8c012ec4cb3,1);
call add_concept_set_members(@category_84c85d0c1ff06bafba40c2d07c85eae4,@test_45a9db080e9594efae2ed8c012ec4cb3,1);

--  Row 49 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Neck', 'neck', 'N/A', 'ConvSet', true);
set @category_62277b522cb6a6e194290362e48255c9 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_62277b522cb6a6e194290362e48255c9,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Neck soft tissue (X-ray)', 'neck soft tissue (x-ray)', 'Numeric', 'Test', true);
set @test_ee7bfe38fb024aa878de1661bd28ba2d = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_ee7bfe38fb024aa878de1661bd28ba2d,1);
call add_concept_set_members(@category_62277b522cb6a6e194290362e48255c9,@test_ee7bfe38fb024aa878de1661bd28ba2d,1);

--  Row 50 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Temporomandibular joint, bilateral (XRay)', 'temporomandibular joint, bilateral (xray)', 'Numeric', 'Test', true);
set @test_ef9ef08762e40cb8e384f05b38965e20 = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_ef9ef08762e40cb8e384f05b38965e20,1);
call add_concept_set_members(@category_5b5fae60649d8c0bde542edd956f084b,@test_ef9ef08762e40cb8e384f05b38965e20,1);

--  Row 51 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Skull, 2 views (X-ray)', 'skull, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_faca9deab6cf7231211eb9fea88999cf = @concept_id;
call add_concept_set_members(@investigation_d44133575d862559a975ae485237a4e1,@test_faca9deab6cf7231211eb9fea88999cf,1);
call add_concept_set_members(@category_c65a1d2dd374721f3397bd4623a78974,@test_faca9deab6cf7231211eb9fea88999cf,1);

--  Row 52 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Endoscopy', 'endoscopy', 'N/A', 'ConvSet', true);
set @investigation_43620da82122424d8a681a5a2b456b47 = @concept_id;
call add_concept_set_members(@other_investigations_concept_id,@investigation_43620da82122424d8a681a5a2b456b47,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Advanced Procedure', 'advanced procedure', 'N/A', 'ConvSet', true);
set @category_db41836590272541d93b0441ca9c0208 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_db41836590272541d93b0441ca9c0208,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Anoscopy', 'anoscopy', 'Numeric', 'Test', true);
set @test_88ed22500f0306f11e184544d00f6426 = @concept_id;
call add_concept_set_members(@investigation_43620da82122424d8a681a5a2b456b47,@test_88ed22500f0306f11e184544d00f6426,1);
call add_concept_set_members(@category_db41836590272541d93b0441ca9c0208,@test_88ed22500f0306f11e184544d00f6426,1);

--  Row 53 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Bronchoscopy', 'bronchoscopy', 'Numeric', 'Test', true);
set @test_467d78e1c726f6091848f2b935a0de07 = @concept_id;
call add_concept_set_members(@investigation_43620da82122424d8a681a5a2b456b47,@test_467d78e1c726f6091848f2b935a0de07,1);
call add_concept_set_members(@category_db41836590272541d93b0441ca9c0208,@test_467d78e1c726f6091848f2b935a0de07,1);

--  Row 54 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Colonoscopy', 'colonoscopy', 'Numeric', 'Test', true);
set @test_d7e52248feafd5a8b27785b3b9ff08ec = @concept_id;
call add_concept_set_members(@investigation_43620da82122424d8a681a5a2b456b47,@test_d7e52248feafd5a8b27785b3b9ff08ec,1);
call add_concept_set_members(@category_db41836590272541d93b0441ca9c0208,@test_d7e52248feafd5a8b27785b3b9ff08ec,1);

--  Row 55 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Cystoscopy', 'cystoscopy', 'Numeric', 'Test', true);
set @test_d205c5a1e7ccc454d9639d37a8f138b0 = @concept_id;
call add_concept_set_members(@investigation_43620da82122424d8a681a5a2b456b47,@test_d205c5a1e7ccc454d9639d37a8f138b0,1);
call add_concept_set_members(@category_db41836590272541d93b0441ca9c0208,@test_d205c5a1e7ccc454d9639d37a8f138b0,1);

--  Row 56 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Normal Procedure', 'normal procedure', 'N/A', 'ConvSet', true);
set @category_378f125404148e009099d8e16adf45cb = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_378f125404148e009099d8e16adf45cb,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Esophagogastroduodenoscopy (EGD)', 'esophagogastroduodenoscopy (egd)', 'Numeric', 'Test', true);
set @test_7a8020367933fc1b16ee253a44d0202e = @concept_id;
call add_concept_set_members(@investigation_43620da82122424d8a681a5a2b456b47,@test_7a8020367933fc1b16ee253a44d0202e,1);
call add_concept_set_members(@category_378f125404148e009099d8e16adf45cb,@test_7a8020367933fc1b16ee253a44d0202e,1);

--  Row 57 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Enteroscopy', 'enteroscopy', 'Numeric', 'Test', true);
set @test_7611ef80693bf10b4b36f2c66c137703 = @concept_id;
call add_concept_set_members(@investigation_43620da82122424d8a681a5a2b456b47,@test_7611ef80693bf10b4b36f2c66c137703,1);
call add_concept_set_members(@category_378f125404148e009099d8e16adf45cb,@test_7611ef80693bf10b4b36f2c66c137703,1);

--  Row 58 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Endoscopic retrograde cholangiopancreatography (ERCP)', 'endoscopic retrograde cholangiopancreatography (ercp)', 'Numeric', 'Test', true);
set @test_7feda9d54293fe006baf677f54665053 = @concept_id;
call add_concept_set_members(@investigation_43620da82122424d8a681a5a2b456b47,@test_7feda9d54293fe006baf677f54665053,1);
call add_concept_set_members(@category_378f125404148e009099d8e16adf45cb,@test_7feda9d54293fe006baf677f54665053,1);

--  Row 59 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Laparoscopy', 'laparoscopy', 'Numeric', 'Test', true);
set @test_c74e247b58b844388586a236e79599f1 = @concept_id;
call add_concept_set_members(@investigation_43620da82122424d8a681a5a2b456b47,@test_c74e247b58b844388586a236e79599f1,1);
call add_concept_set_members(@category_378f125404148e009099d8e16adf45cb,@test_c74e247b58b844388586a236e79599f1,1);

--  Row 60 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Sigmoidoscopy', 'sigmoidoscopy', 'Numeric', 'Test', true);
set @test_bf0e108d85f8428b8469fd3307b8e296 = @concept_id;
call add_concept_set_members(@investigation_43620da82122424d8a681a5a2b456b47,@test_bf0e108d85f8428b8469fd3307b8e296,1);
call add_concept_set_members(@category_378f125404148e009099d8e16adf45cb,@test_bf0e108d85f8428b8469fd3307b8e296,1);


-- Creating Radiology concept word

set @radiology_concept_id = 0;
set @radiology_concept_name_id = 0;
set @new_concept_word_id = 0;

select concept.concept_id, concept_name.concept_name_id from concept join concept_name on concept_name.concept_id = concept.concept_id
where concept_name.name = 'Radiology' and concept_name.concept_name_type='FULLY_SPECIFIED' INTO @radiology_concept_id, @radiology_concept_name_id;

select max(concept_word_id) + 1 from concept_word INTO @new_concept_word_id;

select @radiology_concept_id, @radiology_concept_name_id, @new_concept_word_id;

INSERT INTO concept_word (concept_word_id, concept_id, word, locale, concept_name_id, weight)
            VALUES (@new_concept_word_id, @radiology_concept_id, 'Radiology', 'en', @radiology_concept_name_id, 1);
-- Create order_type : Radiology Order

INSERT INTO order_type (name,description,creator,date_created,uuid) 
SELECT 'Radiology Order','An order for radiology tests',1,now(),uuid() FROM (SELECT 1) t
WHERE NOT EXISTS (SELECT * from order_type where name = 'Radiology Order');



-- Creating Endoscopy concept word

set @endoscopy_concept_id = 0;
set @endoscopy_concept_name_id = 0;
set @new_concept_word_id = 0;

select concept.concept_id, concept_name.concept_name_id from concept join concept_name on concept_name.concept_id = concept.concept_id
where concept_name.name = 'Endoscopy' and concept_name.concept_name_type='FULLY_SPECIFIED' INTO @endoscopy_concept_id, @endoscopy_concept_name_id;

select max(concept_word_id) + 1 from concept_word INTO @new_concept_word_id;

select @endoscopy_concept_id, @endoscopy_concept_name_id, @new_concept_word_id;

INSERT INTO concept_word (concept_word_id, concept_id, word, locale, concept_name_id, weight)
            VALUES (@new_concept_word_id, @endoscopy_concept_id, 'Endoscopy', 'en', @endoscopy_concept_name_id, 1);
-- Create order_type : Endoscopy Order

INSERT INTO order_type (name,description,creator,date_created,uuid) 
SELECT 'Endoscopy Order','An order for endoscopy tests',1,now(),uuid() FROM (SELECT 1) t
WHERE NOT EXISTS (SELECT * from order_type where name = 'Endoscopy Order');

