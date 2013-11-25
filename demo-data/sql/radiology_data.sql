set @concept_id = 0;
set @answer_concept_id = 0;
set @concept_name_short_id = 0;
set @concept_name_full_id = 0;

--  Row 0 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Radiology', 'radiology', 'N/A', 'ConvSet', true);
set @investigation_71e232911e3fdefc19a67ea87a6af40c = @concept_id;
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'X-ray', 'x-ray', 'N/A', 'ConvSet', true);
set @level_one_a2844034a3b98d34bc889965fd6f3270 = @concept_id;
call add_concept_set_members(@investigation_71e232911e3fdefc19a67ea87a6af40c,@level_one_a2844034a3b98d34bc889965fd6f3270,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest', 'chest', 'N/A', 'ConvSet', true);
set @level_two_5f2703c3fcfcd00502488fd424b359d0 = @concept_id;
call add_concept_set_members(@level_one_a2844034a3b98d34bc889965fd6f3270,@level_two_5f2703c3fcfcd00502488fd424b359d0,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest, 1 view (X-ray) ', 'chest, 1 view (x-ray) ', 'Numeric', 'Test', true);
set @test_2856554e837c114b1bea76416af25c1d = @concept_id;
call add_concept_set_members(@level_two_5f2703c3fcfcd00502488fd424b359d0,@test_2856554e837c114b1bea76416af25c1d,1);

--  Row 1 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Spine', 'spine', 'N/A', 'ConvSet', true);
set @level_two_b7ded1b189ddf8d112f93d6b393aec21 = @concept_id;
call add_concept_set_members(@level_one_a2844034a3b98d34bc889965fd6f3270,@level_two_b7ded1b189ddf8d112f93d6b393aec21,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Spine, 1 view (X-ray) ', 'spine, 1 view (x-ray) ', 'Numeric', 'Test', true);
set @test_190b2083361b53d31a41f4ee1907ad87 = @concept_id;
call add_concept_set_members(@level_two_b7ded1b189ddf8d112f93d6b393aec21,@test_190b2083361b53d31a41f4ee1907ad87,1);

--  Row 2 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Pelvis', 'pelvis', 'N/A', 'ConvSet', true);
set @level_two_fefe647c0d6aa063854a194ac6f68ce6 = @concept_id;
call add_concept_set_members(@level_one_a2844034a3b98d34bc889965fd6f3270,@level_two_fefe647c0d6aa063854a194ac6f68ce6,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Pelvis, 1 view (X-ray) ', 'pelvis, 1 view (x-ray) ', 'Numeric', 'Test', true);
set @test_a100d3bcde50e7885795502ccaf837cc = @concept_id;
call add_concept_set_members(@level_two_fefe647c0d6aa063854a194ac6f68ce6,@test_a100d3bcde50e7885795502ccaf837cc,1);

--  Row 3 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Abdomen', 'abdomen', 'N/A', 'ConvSet', true);
set @level_two_e1d4e4b27ada2b82666272ce7d254ffe = @concept_id;
call add_concept_set_members(@level_one_a2844034a3b98d34bc889965fd6f3270,@level_two_e1d4e4b27ada2b82666272ce7d254ffe,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Abdomen, 1 view (X-ray) ', 'abdomen, 1 view (x-ray) ', 'Numeric', 'Test', true);
set @test_d3a97156fdea02a926bf412e85554808 = @concept_id;
call add_concept_set_members(@level_two_e1d4e4b27ada2b82666272ce7d254ffe,@test_d3a97156fdea02a926bf412e85554808,1);

--  Row 4 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Knee', 'knee', 'N/A', 'ConvSet', true);
set @level_two_da55ca1716b6c76fc9d62ee665527587 = @concept_id;
call add_concept_set_members(@level_one_a2844034a3b98d34bc889965fd6f3270,@level_two_da55ca1716b6c76fc9d62ee665527587,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Knee - Left, 1 or 2 views (X-ray) ', 'knee - left, 1 or 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_86c565168bafacd03eaa8a578b8cba73 = @concept_id;
call add_concept_set_members(@level_two_da55ca1716b6c76fc9d62ee665527587,@test_86c565168bafacd03eaa8a578b8cba73,1);

--  Row 5 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Knee - Right, 1 or 2 views (X-ray) ', 'knee - right, 1 or 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_b8f75b43fac82c614a06e37f012dcfe6 = @concept_id;
call add_concept_set_members(@level_two_da55ca1716b6c76fc9d62ee665527587,@test_b8f75b43fac82c614a06e37f012dcfe6,1);

--  Row 6 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest, 2 views (X-ray) ', 'chest, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_314cec6a04a4bee1c1f44289ddaae58c = @concept_id;
call add_concept_set_members(@level_two_5f2703c3fcfcd00502488fd424b359d0,@test_314cec6a04a4bee1c1f44289ddaae58c,1);

--  Row 7 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hip', 'hip', 'N/A', 'ConvSet', true);
set @level_two_5202776c3438b4fcd8c2ad85e1fab089 = @concept_id;
call add_concept_set_members(@level_one_a2844034a3b98d34bc889965fd6f3270,@level_two_5202776c3438b4fcd8c2ad85e1fab089,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hip - Left, 2 views (X-ray) ', 'hip - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_c1633e95a12b8d07c3b0e8715d98c41c = @concept_id;
call add_concept_set_members(@level_two_5202776c3438b4fcd8c2ad85e1fab089,@test_c1633e95a12b8d07c3b0e8715d98c41c,1);

--  Row 8 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hand', 'hand', 'N/A', 'ConvSet', true);
set @level_two_c3685b75d7f59b1858b8113c33131bb9 = @concept_id;
call add_concept_set_members(@level_one_a2844034a3b98d34bc889965fd6f3270,@level_two_c3685b75d7f59b1858b8113c33131bb9,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hand - Left, 2 views (X-ray) ', 'hand - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_6af738d5f7f78cf73069ba95858ab6c4 = @concept_id;
call add_concept_set_members(@level_two_c3685b75d7f59b1858b8113c33131bb9,@test_6af738d5f7f78cf73069ba95858ab6c4,1);

--  Row 9 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hip - Right, 2 views (X-ray) ', 'hip - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_43cadbd88a477b0cfa5c580434da4bb5 = @concept_id;
call add_concept_set_members(@level_two_5202776c3438b4fcd8c2ad85e1fab089,@test_43cadbd88a477b0cfa5c580434da4bb5,1);

--  Row 10 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ribs', 'ribs', 'N/A', 'ConvSet', true);
set @level_two_9fa3870d146adff1dd0d206d92b5f799 = @concept_id;
call add_concept_set_members(@level_one_a2844034a3b98d34bc889965fd6f3270,@level_two_9fa3870d146adff1dd0d206d92b5f799,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ribs - Left, 2 views (X-ray) ', 'ribs - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_3a395bc1c77ba092cdf5e0b70c5ff537 = @concept_id;
call add_concept_set_members(@level_two_9fa3870d146adff1dd0d206d92b5f799,@test_3a395bc1c77ba092cdf5e0b70c5ff537,1);

--  Row 11 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Leg', 'leg', 'N/A', 'ConvSet', true);
set @level_two_0ee9ed1a1bfcfc9c082b590e2a24f45d = @concept_id;
call add_concept_set_members(@level_one_a2844034a3b98d34bc889965fd6f3270,@level_two_0ee9ed1a1bfcfc9c082b590e2a24f45d,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Foot - Left, 2 views (X-ray) ', 'foot - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_16625dc301f2061e842d10143381bbc9 = @concept_id;
call add_concept_set_members(@level_two_0ee9ed1a1bfcfc9c082b590e2a24f45d,@test_16625dc301f2061e842d10143381bbc9,1);

--  Row 12 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Femur - Left, 2 views (X-ray) ', 'femur - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_f2e1e61dae07678b2c08d3006003e533 = @concept_id;
call add_concept_set_members(@level_two_0ee9ed1a1bfcfc9c082b590e2a24f45d,@test_f2e1e61dae07678b2c08d3006003e533,1);

--  Row 13 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ribs - Right, 2 views (X-ray) ', 'ribs - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_9072503d152461c5b047355d45f1022c = @concept_id;
call add_concept_set_members(@level_two_9fa3870d146adff1dd0d206d92b5f799,@test_9072503d152461c5b047355d45f1022c,1);

--  Row 14 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Foot - Right, 2 views (X-ray) ', 'foot - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_615cc8ed1b493abf0c59c1462d92d134 = @concept_id;
call add_concept_set_members(@level_two_0ee9ed1a1bfcfc9c082b590e2a24f45d,@test_615cc8ed1b493abf0c59c1462d92d134,1);

--  Row 15 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Arm', 'arm', 'N/A', 'ConvSet', true);
set @level_two_b41803207862e43e267dc4ae8c1f05b9 = @concept_id;
call add_concept_set_members(@level_one_a2844034a3b98d34bc889965fd6f3270,@level_two_b41803207862e43e267dc4ae8c1f05b9,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Elbow - Left, 2 views (X-ray) ', 'elbow - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_1a75a49041830b175d7baf9254d7a69a = @concept_id;
call add_concept_set_members(@level_two_b41803207862e43e267dc4ae8c1f05b9,@test_1a75a49041830b175d7baf9254d7a69a,1);

--  Row 16 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hand - Right, 2 views (X-ray) ', 'hand - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_7842fa44930054a00d7c1537bb14eaf7 = @concept_id;
call add_concept_set_members(@level_two_b41803207862e43e267dc4ae8c1f05b9,@test_7842fa44930054a00d7c1537bb14eaf7,1);

--  Row 17 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Wrist - Left, 2 views (X-ray) ', 'wrist - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_669dd687a8888057078516cba8ee269a = @concept_id;
call add_concept_set_members(@level_two_b41803207862e43e267dc4ae8c1f05b9,@test_669dd687a8888057078516cba8ee269a,1);

--  Row 18 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Elbow - Right, 2 views (X-ray) ', 'elbow - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_f45246c4ba01bbe2f92b28d1f56c3beb = @concept_id;
call add_concept_set_members(@level_two_b41803207862e43e267dc4ae8c1f05b9,@test_f45246c4ba01bbe2f92b28d1f56c3beb,1);

--  Row 19 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Wrist - Right, 2 views (X-ray) ', 'wrist - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_0a93288fb68a523514045c9bf936ea44 = @concept_id;
call add_concept_set_members(@level_two_b41803207862e43e267dc4ae8c1f05b9,@test_0a93288fb68a523514045c9bf936ea44,1);

--  Row 20 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Femur - Right, 2 views (X-ray) ', 'femur - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_626ce9c821ad5646e54df1bf738ce1dd = @concept_id;
call add_concept_set_members(@level_two_0ee9ed1a1bfcfc9c082b590e2a24f45d,@test_626ce9c821ad5646e54df1bf738ce1dd,1);

--  Row 21 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Forearm - Left, 2 views (X-ray) ', 'forearm - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_a8713018dd5b7326e6b0f194d617961f = @concept_id;
call add_concept_set_members(@level_two_b41803207862e43e267dc4ae8c1f05b9,@test_a8713018dd5b7326e6b0f194d617961f,1);

--  Row 22 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Humerus - Left, 2 views (X-ray) ', 'humerus - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_01934f2dbdd77a4e7007fab7c2e16c59 = @concept_id;
call add_concept_set_members(@level_two_b41803207862e43e267dc4ae8c1f05b9,@test_01934f2dbdd77a4e7007fab7c2e16c59,1);

--  Row 23 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Lumbar spine, 2 or 3 views (X-ray) ', 'lumbar spine, 2 or 3 views (x-ray) ', 'Numeric', 'Test', true);
set @test_8e272db900ccc67efc61bd83182117ab = @concept_id;
call add_concept_set_members(@level_two_b7ded1b189ddf8d112f93d6b393aec21,@test_8e272db900ccc67efc61bd83182117ab,1);

--  Row 24 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Forearm - Right, 2 views (X-ray) ', 'forearm - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_22bb14dec7cfa53687a544aa683e4b49 = @concept_id;
call add_concept_set_members(@level_two_b41803207862e43e267dc4ae8c1f05b9,@test_22bb14dec7cfa53687a544aa683e4b49,1);

--  Row 25 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Shoulder', 'shoulder', 'N/A', 'ConvSet', true);
set @level_two_83694c99b9fd9ab28a95203dbd237b09 = @concept_id;
call add_concept_set_members(@level_one_a2844034a3b98d34bc889965fd6f3270,@level_two_83694c99b9fd9ab28a95203dbd237b09,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Clavicle - Left, 2 views (X-ray) ', 'clavicle - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_f512a8ab0f181b1aa74d5ccde0fdda1e = @concept_id;
call add_concept_set_members(@level_two_83694c99b9fd9ab28a95203dbd237b09,@test_f512a8ab0f181b1aa74d5ccde0fdda1e,1);

--  Row 26 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Humerus - Right, 2 views (X-ray) ', 'humerus - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_e3cbefef875a8735259436846d86fbf4 = @concept_id;
call add_concept_set_members(@level_two_b41803207862e43e267dc4ae8c1f05b9,@test_e3cbefef875a8735259436846d86fbf4,1);

--  Row 27 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Shoulder - Left, 2 views (X-ray) ', 'shoulder - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_f70bcaf69d25125a659829bf6637e261 = @concept_id;
call add_concept_set_members(@level_two_83694c99b9fd9ab28a95203dbd237b09,@test_f70bcaf69d25125a659829bf6637e261,1);

--  Row 28 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Shoulder - Right, 2 views (X-ray) ', 'shoulder - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_c220803ac9d6e7400d89bffe81c752de = @concept_id;
call add_concept_set_members(@level_two_83694c99b9fd9ab28a95203dbd237b09,@test_c220803ac9d6e7400d89bffe81c752de,1);

--  Row 29 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Lower leg - Left, 2 views (X-ray) ', 'lower leg - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_062f365b72ff5f5ec427303e78694011 = @concept_id;
call add_concept_set_members(@level_two_0ee9ed1a1bfcfc9c082b590e2a24f45d,@test_062f365b72ff5f5ec427303e78694011,1);

--  Row 30 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Calcaneus - Left, 2 views (X-ray) ', 'calcaneus - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_d1e9173a7b9752ce2beb9ccca630529b = @concept_id;
call add_concept_set_members(@level_two_0ee9ed1a1bfcfc9c082b590e2a24f45d,@test_d1e9173a7b9752ce2beb9ccca630529b,1);

--  Row 31 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Thoracic spine, 2 views (X-ray) ', 'thoracic spine, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_d53bdf056e2697d5936fcc3a86980fe9 = @concept_id;
call add_concept_set_members(@level_two_b7ded1b189ddf8d112f93d6b393aec21,@test_d53bdf056e2697d5936fcc3a86980fe9,1);

--  Row 32 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Clavicle - Right, 2 views (X-ray) ', 'clavicle - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_bd3f0967e07d7bbb566b32bfee1339ff = @concept_id;
call add_concept_set_members(@level_two_83694c99b9fd9ab28a95203dbd237b09,@test_bd3f0967e07d7bbb566b32bfee1339ff,1);

--  Row 33 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Lower leg - Right, 2 views (X-ray) ', 'lower leg - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_e61a67ce39ede57313ee0736de3c2799 = @concept_id;
call add_concept_set_members(@level_two_0ee9ed1a1bfcfc9c082b590e2a24f45d,@test_e61a67ce39ede57313ee0736de3c2799,1);

--  Row 34 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Calcaneus - Right, 2 views (X-ray) ', 'calcaneus - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_857ce1a57565c69157c33090ce8b573d = @concept_id;
call add_concept_set_members(@level_two_0ee9ed1a1bfcfc9c082b590e2a24f45d,@test_857ce1a57565c69157c33090ce8b573d,1);

--  Row 35 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Cervical spine, 2 or 3 views (X-ray) ', 'cervical spine, 2 or 3 views (x-ray) ', 'Numeric', 'Test', true);
set @test_0cefe2d50b627cb956ace40382d44dc9 = @concept_id;
call add_concept_set_members(@level_two_b7ded1b189ddf8d112f93d6b393aec21,@test_0cefe2d50b627cb956ace40382d44dc9,1);

--  Row 36 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Thoracic and lumbar spine, 2 views (X-ray) ', 'thoracic and lumbar spine, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_e2b86838a2deba76095ded4be37e8729 = @concept_id;
call add_concept_set_members(@level_two_b7ded1b189ddf8d112f93d6b393aec21,@test_e2b86838a2deba76095ded4be37e8729,1);

--  Row 37 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Face', 'face', 'N/A', 'ConvSet', true);
set @level_two_7af82194dc2b994f0fa7bb5f46615c90 = @concept_id;
call add_concept_set_members(@level_one_a2844034a3b98d34bc889965fd6f3270,@level_two_7af82194dc2b994f0fa7bb5f46615c90,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Sinuses, 3 views (X-ray) ', 'sinuses, 3 views (x-ray) ', 'Numeric', 'Test', true);
set @test_dddc62fef065ab115866b90f2ed26432 = @concept_id;
call add_concept_set_members(@level_two_7af82194dc2b994f0fa7bb5f46615c90,@test_dddc62fef065ab115866b90f2ed26432,1);

--  Row 38 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Facial bones, 3 views (X-ray) ', 'facial bones, 3 views (x-ray) ', 'Numeric', 'Test', true);
set @test_80a03bf74a2c297280893598682cca4a = @concept_id;
call add_concept_set_members(@level_two_7af82194dc2b994f0fa7bb5f46615c90,@test_80a03bf74a2c297280893598682cca4a,1);

--  Row 39 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Head', 'head', 'N/A', 'ConvSet', true);
set @level_two_a69777ee3e1a899cdecd52721e7aff24 = @concept_id;
call add_concept_set_members(@level_one_a2844034a3b98d34bc889965fd6f3270,@level_two_a69777ee3e1a899cdecd52721e7aff24,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Skull, 4 views (X-ray) ', 'skull, 4 views (x-ray) ', 'Numeric', 'Test', true);
set @test_00c692bb2bfe2a18c2a7f89058b645b7 = @concept_id;
call add_concept_set_members(@level_two_a69777ee3e1a899cdecd52721e7aff24,@test_00c692bb2bfe2a18c2a7f89058b645b7,1);

--  Row 40 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest, 4 views (X-ray) ', 'chest, 4 views (x-ray) ', 'Numeric', 'Test', true);
set @test_d74cf912e5d9cd5616b95502bc6f3b9f = @concept_id;
call add_concept_set_members(@level_two_5f2703c3fcfcd00502488fd424b359d0,@test_d74cf912e5d9cd5616b95502bc6f3b9f,1);

--  Row 41 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Mandible panorex (X-ray) ', 'mandible panorex (x-ray) ', 'Numeric', 'Test', true);
set @test_11f8f343767ea6ab9b7c907cfe7128e4 = @concept_id;
call add_concept_set_members(@level_two_7af82194dc2b994f0fa7bb5f46615c90,@test_11f8f343767ea6ab9b7c907cfe7128e4,1);

--  Row 42 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest lordotic (X-ray) ', 'chest lordotic (x-ray) ', 'Numeric', 'Test', true);
set @test_4515d8f17203e63c843d9ce5665e72cc = @concept_id;
call add_concept_set_members(@level_two_5f2703c3fcfcd00502488fd424b359d0,@test_4515d8f17203e63c843d9ce5665e72cc,1);

--  Row 43 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest oblique - Bilateral (X-ray) ', 'chest oblique - bilateral (x-ray) ', 'Numeric', 'Test', true);
set @test_e1a2c3cb4ef6357d189b4d577150358e = @concept_id;
call add_concept_set_members(@level_two_5f2703c3fcfcd00502488fd424b359d0,@test_e1a2c3cb4ef6357d189b4d577150358e,1);

--  Row 44 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Other', 'other', 'N/A', 'ConvSet', true);
set @level_two_e8126b85a33a5598c49bd235719c7339 = @concept_id;
call add_concept_set_members(@level_one_a2844034a3b98d34bc889965fd6f3270,@level_two_e8126b85a33a5598c49bd235719c7339,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Kidney retrograde pyelogram (X-ray) ', 'kidney retrograde pyelogram (x-ray) ', 'Numeric', 'Test', true);
set @test_0c96aa088ec173fa0f6564aa189fd776 = @concept_id;
call add_concept_set_members(@level_two_e8126b85a33a5598c49bd235719c7339,@test_0c96aa088ec173fa0f6564aa189fd776,1);

--  Row 45 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Acromioclavicular joints - Bilateral (X-ray) ', 'acromioclavicular joints - bilateral (x-ray) ', 'Numeric', 'Test', true);
set @test_55cc960b2885193eece7e7fdc61ff652 = @concept_id;
call add_concept_set_members(@level_two_83694c99b9fd9ab28a95203dbd237b09,@test_55cc960b2885193eece7e7fdc61ff652,1);

--  Row 46 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Abdomen AP (supine and lateraldecubitus) (X-ray) ', 'abdomen ap (supine and lateraldecubitus) (x-ray) ', 'Numeric', 'Test', true);
set @test_f47e88a28288e5e12f5c6e77d32037dc = @concept_id;
call add_concept_set_members(@level_two_e1d4e4b27ada2b82666272ce7d254ffe,@test_f47e88a28288e5e12f5c6e77d32037dc,1);

--  Row 47 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ankle - Left, 3 views (X-ray) ', 'ankle - left, 3 views (x-ray) ', 'Numeric', 'Test', true);
set @test_db1c0eb7683bc83fad59b6c45bfffdd0 = @concept_id;
call add_concept_set_members(@level_two_0ee9ed1a1bfcfc9c082b590e2a24f45d,@test_db1c0eb7683bc83fad59b6c45bfffdd0,1);

--  Row 48 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ankle - Right, 3 views (X-ray) ', 'ankle - right, 3 views (x-ray) ', 'Numeric', 'Test', true);
set @test_e9857e74a458ddfdb9979d2d5b194c7f = @concept_id;
call add_concept_set_members(@level_two_0ee9ed1a1bfcfc9c082b590e2a24f45d,@test_e9857e74a458ddfdb9979d2d5b194c7f,1);

--  Row 49 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Neck', 'neck', 'N/A', 'ConvSet', true);
set @level_two_ed9164828c33962cc5b7e0fb24e1879a = @concept_id;
call add_concept_set_members(@level_one_a2844034a3b98d34bc889965fd6f3270,@level_two_ed9164828c33962cc5b7e0fb24e1879a,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Neck soft tissue (X-ray) ', 'neck soft tissue (x-ray) ', 'Numeric', 'Test', true);
set @test_7c22da59bc6b946511983bc8408b0e06 = @concept_id;
call add_concept_set_members(@level_two_ed9164828c33962cc5b7e0fb24e1879a,@test_7c22da59bc6b946511983bc8408b0e06,1);

--  Row 50 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Temporomandibular joint, bilateral (XRay) ', 'temporomandibular joint, bilateral (xray) ', 'Numeric', 'Test', true);
set @test_f00a2bd0eccff0dc33eb3489631c762e = @concept_id;
call add_concept_set_members(@level_two_7af82194dc2b994f0fa7bb5f46615c90,@test_f00a2bd0eccff0dc33eb3489631c762e,1);

--  Row 51 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Skull, 2 views (X-ray) ', 'skull, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_67100887ced19b7a9e6db0e7a5ed9cdd = @concept_id;
call add_concept_set_members(@level_two_a69777ee3e1a899cdecd52721e7aff24,@test_67100887ced19b7a9e6db0e7a5ed9cdd,1);


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