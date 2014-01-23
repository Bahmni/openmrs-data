set @concept_id = 0;
set @answer_concept_id = 0;
set @concept_name_short_id = 0;
set @concept_name_full_id = 0;
select concept_id INTO @other_investigations_concept_id from concept_name where name='Other Investigations' and concept_name_type = 'FULLY_SPECIFIED' and voided = 0;

select concept_id INTO @other_investigations_categories_concept_id from concept_name where name='Other Investigations Categories' and concept_name_type = 'FULLY_SPECIFIED' and voided = 0;


--  Row 0 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Radiology', 'radiology', 'N/A', 'ConvSet', true);
set @investigation_749b32e5a3b12506aa08dca9816784f3 = @concept_id;
call add_concept_set_members(@other_investigations_concept_id,@investigation_749b32e5a3b12506aa08dca9816784f3,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest', 'chest', 'N/A', 'ConvSet', true);
set @category_43d1a78d51b3f705a589ca0792ef1100 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_43d1a78d51b3f705a589ca0792ef1100,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest, 1 view (X-ray)', 'chest, 1 view (x-ray)', 'Text', 'Test', true);
set @test_861de770b51728f1f87d35e8d6d29104 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_861de770b51728f1f87d35e8d6d29104,1);
call add_concept_set_members(@category_43d1a78d51b3f705a589ca0792ef1100,@test_861de770b51728f1f87d35e8d6d29104,1);

--  Row 1 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Spine', 'spine', 'N/A', 'ConvSet', true);
set @category_da026ae6a9883a905303075bb47356f9 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_da026ae6a9883a905303075bb47356f9,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Spine, 1 view (X-ray)', 'spine, 1 view (x-ray)', 'Text', 'Test', true);
set @test_20886b66aee4c9e815d77f6359a88c1c = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_20886b66aee4c9e815d77f6359a88c1c,1);
call add_concept_set_members(@category_da026ae6a9883a905303075bb47356f9,@test_20886b66aee4c9e815d77f6359a88c1c,1);

--  Row 2 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Pelvis', 'pelvis', 'N/A', 'ConvSet', true);
set @category_3d5733c8025ff946125f192dd7429348 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_3d5733c8025ff946125f192dd7429348,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Pelvis, 1 view (X-ray)', 'pelvis, 1 view (x-ray)', 'Text', 'Test', true);
set @test_439339320e39a68cfa793b9d89a71af2 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_439339320e39a68cfa793b9d89a71af2,1);
call add_concept_set_members(@category_3d5733c8025ff946125f192dd7429348,@test_439339320e39a68cfa793b9d89a71af2,1);

--  Row 3 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Abdomen', 'abdomen', 'N/A', 'ConvSet', true);
set @category_25cab97a2f284a3da48e78ccdc7a834b = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_25cab97a2f284a3da48e78ccdc7a834b,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Abdomen, 1 view (X-ray)', 'abdomen, 1 view (x-ray)', 'Text', 'Test', true);
set @test_bd40d3d1ea5a9149fc2da317c6f100b2 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_bd40d3d1ea5a9149fc2da317c6f100b2,1);
call add_concept_set_members(@category_25cab97a2f284a3da48e78ccdc7a834b,@test_bd40d3d1ea5a9149fc2da317c6f100b2,1);

--  Row 4 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Knee', 'knee', 'N/A', 'ConvSet', true);
set @category_965c9170753e501d2ea5ed0947dd18e7 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_965c9170753e501d2ea5ed0947dd18e7,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Knee - Left, 1 or 2 views (X-ray)', 'knee - left, 1 or 2 views (x-ray)', 'Text', 'Test', true);
set @test_f386f50ac67bed53b6e9fac7923ecb59 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_f386f50ac67bed53b6e9fac7923ecb59,1);
call add_concept_set_members(@category_965c9170753e501d2ea5ed0947dd18e7,@test_f386f50ac67bed53b6e9fac7923ecb59,1);

--  Row 5 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Knee - Right, 1 or 2 views (X-ray)', 'knee - right, 1 or 2 views (x-ray)', 'Text', 'Test', true);
set @test_ad68818451b1470cdd33c4d698f92c48 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_ad68818451b1470cdd33c4d698f92c48,1);
call add_concept_set_members(@category_965c9170753e501d2ea5ed0947dd18e7,@test_ad68818451b1470cdd33c4d698f92c48,1);

--  Row 6 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest, 2 views (X-ray)', 'chest, 2 views (x-ray)', 'Text', 'Test', true);
set @test_ed6404845a17d78d53ee74fbe05c9125 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_ed6404845a17d78d53ee74fbe05c9125,1);
call add_concept_set_members(@category_43d1a78d51b3f705a589ca0792ef1100,@test_ed6404845a17d78d53ee74fbe05c9125,1);

--  Row 7 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hip', 'hip', 'N/A', 'ConvSet', true);
set @category_8db2d89175f9f19d947f1048f2c9988e = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_8db2d89175f9f19d947f1048f2c9988e,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hip - Left, 2 views (X-ray)', 'hip - left, 2 views (x-ray)', 'Text', 'Test', true);
set @test_07c6312e999adf3ab05ce76f1f424be7 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_07c6312e999adf3ab05ce76f1f424be7,1);
call add_concept_set_members(@category_8db2d89175f9f19d947f1048f2c9988e,@test_07c6312e999adf3ab05ce76f1f424be7,1);

--  Row 8 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hand', 'hand', 'N/A', 'ConvSet', true);
set @category_d469eae028d47a781816c2abfb139b44 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_d469eae028d47a781816c2abfb139b44,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hand - Left, 2 views (X-ray)', 'hand - left, 2 views (x-ray)', 'Text', 'Test', true);
set @test_b65702795ee98180b6ceb9155c20fcce = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_b65702795ee98180b6ceb9155c20fcce,1);
call add_concept_set_members(@category_d469eae028d47a781816c2abfb139b44,@test_b65702795ee98180b6ceb9155c20fcce,1);

--  Row 9 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hip - Right, 2 views (X-ray)', 'hip - right, 2 views (x-ray)', 'Text', 'Test', true);
set @test_0d9a836284d8f7e29bfef2b8f09b66df = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_0d9a836284d8f7e29bfef2b8f09b66df,1);
call add_concept_set_members(@category_8db2d89175f9f19d947f1048f2c9988e,@test_0d9a836284d8f7e29bfef2b8f09b66df,1);

--  Row 10 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ribs', 'ribs', 'N/A', 'ConvSet', true);
set @category_af3977208987b6fa47394f2b53f4d800 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_af3977208987b6fa47394f2b53f4d800,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ribs - Left, 2 views (X-ray)', 'ribs - left, 2 views (x-ray)', 'Text', 'Test', true);
set @test_898b67c3d49a19bad0719a9fb44ee514 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_898b67c3d49a19bad0719a9fb44ee514,1);
call add_concept_set_members(@category_af3977208987b6fa47394f2b53f4d800,@test_898b67c3d49a19bad0719a9fb44ee514,1);

--  Row 11 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Leg', 'leg', 'N/A', 'ConvSet', true);
set @category_cab78827d0c7448c886fe0079dbd6576 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_cab78827d0c7448c886fe0079dbd6576,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Foot - Left, 2 views (X-ray)', 'foot - left, 2 views (x-ray)', 'Text', 'Test', true);
set @test_e25c0d5a00ff49beb45342ce0e28790b = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_e25c0d5a00ff49beb45342ce0e28790b,1);
call add_concept_set_members(@category_cab78827d0c7448c886fe0079dbd6576,@test_e25c0d5a00ff49beb45342ce0e28790b,1);

--  Row 12 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Femur - Left, 2 views (X-ray)', 'femur - left, 2 views (x-ray)', 'Text', 'Test', true);
set @test_63eb114f4ac7e68b6589b8efa7c3e1cd = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_63eb114f4ac7e68b6589b8efa7c3e1cd,1);
call add_concept_set_members(@category_cab78827d0c7448c886fe0079dbd6576,@test_63eb114f4ac7e68b6589b8efa7c3e1cd,1);

--  Row 13 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ribs - Right, 2 views (X-ray)', 'ribs - right, 2 views (x-ray)', 'Text', 'Test', true);
set @test_df99a9d795864a49debb45554f12ed6f = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_df99a9d795864a49debb45554f12ed6f,1);
call add_concept_set_members(@category_af3977208987b6fa47394f2b53f4d800,@test_df99a9d795864a49debb45554f12ed6f,1);

--  Row 14 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Foot - Right, 2 views (X-ray)', 'foot - right, 2 views (x-ray)', 'Text', 'Test', true);
set @test_4e457ed1ec32f1c897349d5dd2210b4a = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_4e457ed1ec32f1c897349d5dd2210b4a,1);
call add_concept_set_members(@category_cab78827d0c7448c886fe0079dbd6576,@test_4e457ed1ec32f1c897349d5dd2210b4a,1);

--  Row 15 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Arm', 'arm', 'N/A', 'ConvSet', true);
set @category_79ceb01d2cb436c118ce312ebdd6270b = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_79ceb01d2cb436c118ce312ebdd6270b,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Elbow - Left, 2 views (X-ray)', 'elbow - left, 2 views (x-ray)', 'Text', 'Test', true);
set @test_5da2eb47c3f14195c15639b75fdf7248 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_5da2eb47c3f14195c15639b75fdf7248,1);
call add_concept_set_members(@category_79ceb01d2cb436c118ce312ebdd6270b,@test_5da2eb47c3f14195c15639b75fdf7248,1);

--  Row 16 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hand - Right, 2 views (X-ray)', 'hand - right, 2 views (x-ray)', 'Text', 'Test', true);
set @test_8ba48d4ab2b117c703cd87bff8a45483 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_8ba48d4ab2b117c703cd87bff8a45483,1);
call add_concept_set_members(@category_79ceb01d2cb436c118ce312ebdd6270b,@test_8ba48d4ab2b117c703cd87bff8a45483,1);

--  Row 17 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Wrist - Left, 2 views (X-ray)', 'wrist - left, 2 views (x-ray)', 'Text', 'Test', true);
set @test_292041124f1ae7b4d7a43a4e2b7453bf = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_292041124f1ae7b4d7a43a4e2b7453bf,1);
call add_concept_set_members(@category_79ceb01d2cb436c118ce312ebdd6270b,@test_292041124f1ae7b4d7a43a4e2b7453bf,1);

--  Row 18 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Elbow - Right, 2 views (X-ray)', 'elbow - right, 2 views (x-ray)', 'Text', 'Test', true);
set @test_effeca1ff33ef3a87c2f21d2eb46b859 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_effeca1ff33ef3a87c2f21d2eb46b859,1);
call add_concept_set_members(@category_79ceb01d2cb436c118ce312ebdd6270b,@test_effeca1ff33ef3a87c2f21d2eb46b859,1);

--  Row 19 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Wrist - Right, 2 views (X-ray)', 'wrist - right, 2 views (x-ray)', 'Text', 'Test', true);
set @test_a2368545af2604804be340776246f202 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_a2368545af2604804be340776246f202,1);
call add_concept_set_members(@category_79ceb01d2cb436c118ce312ebdd6270b,@test_a2368545af2604804be340776246f202,1);

--  Row 20 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Femur - Right, 2 views (X-ray)', 'femur - right, 2 views (x-ray)', 'Text', 'Test', true);
set @test_24bf1aedf68114508bdf1ce13bebe38d = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_24bf1aedf68114508bdf1ce13bebe38d,1);
call add_concept_set_members(@category_cab78827d0c7448c886fe0079dbd6576,@test_24bf1aedf68114508bdf1ce13bebe38d,1);

--  Row 21 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Forearm - Left, 2 views (X-ray)', 'forearm - left, 2 views (x-ray)', 'Text', 'Test', true);
set @test_34d807466c624a34f6ca8535ebd6c101 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_34d807466c624a34f6ca8535ebd6c101,1);
call add_concept_set_members(@category_79ceb01d2cb436c118ce312ebdd6270b,@test_34d807466c624a34f6ca8535ebd6c101,1);

--  Row 22 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Humerus - Left, 2 views (X-ray)', 'humerus - left, 2 views (x-ray)', 'Text', 'Test', true);
set @test_ea733c27a95c0d5f7cd2773ca819df2b = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_ea733c27a95c0d5f7cd2773ca819df2b,1);
call add_concept_set_members(@category_79ceb01d2cb436c118ce312ebdd6270b,@test_ea733c27a95c0d5f7cd2773ca819df2b,1);

--  Row 23 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Lumbar spine, 2 or 3 views (X-ray)', 'lumbar spine, 2 or 3 views (x-ray)', 'Text', 'Test', true);
set @test_6b8c419c97964677f07873fe7002f2d5 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_6b8c419c97964677f07873fe7002f2d5,1);
call add_concept_set_members(@category_da026ae6a9883a905303075bb47356f9,@test_6b8c419c97964677f07873fe7002f2d5,1);

--  Row 24 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Forearm - Right, 2 views (X-ray)', 'forearm - right, 2 views (x-ray)', 'Text', 'Test', true);
set @test_8304cd0b854cc3d6dffe4b66834d25e2 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_8304cd0b854cc3d6dffe4b66834d25e2,1);
call add_concept_set_members(@category_79ceb01d2cb436c118ce312ebdd6270b,@test_8304cd0b854cc3d6dffe4b66834d25e2,1);

--  Row 25 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Shoulder', 'shoulder', 'N/A', 'ConvSet', true);
set @category_136dc25f49adff33d86e0333f8029230 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_136dc25f49adff33d86e0333f8029230,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Clavicle - Left, 2 views (X-ray)', 'clavicle - left, 2 views (x-ray)', 'Text', 'Test', true);
set @test_3f25abe0f2d42599896316b174cc985b = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_3f25abe0f2d42599896316b174cc985b,1);
call add_concept_set_members(@category_136dc25f49adff33d86e0333f8029230,@test_3f25abe0f2d42599896316b174cc985b,1);

--  Row 26 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Humerus - Right, 2 views (X-ray)', 'humerus - right, 2 views (x-ray)', 'Text', 'Test', true);
set @test_63a3f1e2eac61ca122dd3352e481f285 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_63a3f1e2eac61ca122dd3352e481f285,1);
call add_concept_set_members(@category_79ceb01d2cb436c118ce312ebdd6270b,@test_63a3f1e2eac61ca122dd3352e481f285,1);

--  Row 27 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Shoulder - Left, 2 views (X-ray)', 'shoulder - left, 2 views (x-ray)', 'Text', 'Test', true);
set @test_44d5d4ec9b86b3707c2db95f21176b36 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_44d5d4ec9b86b3707c2db95f21176b36,1);
call add_concept_set_members(@category_136dc25f49adff33d86e0333f8029230,@test_44d5d4ec9b86b3707c2db95f21176b36,1);

--  Row 28 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Shoulder - Right, 2 views (X-ray)', 'shoulder - right, 2 views (x-ray)', 'Text', 'Test', true);
set @test_371e242b876f87ab567b9ef590b3c836 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_371e242b876f87ab567b9ef590b3c836,1);
call add_concept_set_members(@category_136dc25f49adff33d86e0333f8029230,@test_371e242b876f87ab567b9ef590b3c836,1);

--  Row 29 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Lower leg - Left, 2 views (X-ray)', 'lower leg - left, 2 views (x-ray)', 'Text', 'Test', true);
set @test_2e6a7e2b76e919ab37c3529a2ea1cdd5 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_2e6a7e2b76e919ab37c3529a2ea1cdd5,1);
call add_concept_set_members(@category_cab78827d0c7448c886fe0079dbd6576,@test_2e6a7e2b76e919ab37c3529a2ea1cdd5,1);

--  Row 30 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Calcaneus - Left, 2 views (X-ray)', 'calcaneus - left, 2 views (x-ray)', 'Text', 'Test', true);
set @test_217f569426232bd73d14f87ec444237b = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_217f569426232bd73d14f87ec444237b,1);
call add_concept_set_members(@category_cab78827d0c7448c886fe0079dbd6576,@test_217f569426232bd73d14f87ec444237b,1);

--  Row 31 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Thoracic spine, 2 views (X-ray)', 'thoracic spine, 2 views (x-ray)', 'Text', 'Test', true);
set @test_0a80636bd3b700b5b40ada1aa402fc1f = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_0a80636bd3b700b5b40ada1aa402fc1f,1);
call add_concept_set_members(@category_da026ae6a9883a905303075bb47356f9,@test_0a80636bd3b700b5b40ada1aa402fc1f,1);

--  Row 32 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Clavicle - Right, 2 views (X-ray)', 'clavicle - right, 2 views (x-ray)', 'Text', 'Test', true);
set @test_72c491ae419df158232d547ec867eae1 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_72c491ae419df158232d547ec867eae1,1);
call add_concept_set_members(@category_136dc25f49adff33d86e0333f8029230,@test_72c491ae419df158232d547ec867eae1,1);

--  Row 33 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Lower leg - Right, 2 views (X-ray)', 'lower leg - right, 2 views (x-ray)', 'Text', 'Test', true);
set @test_44898ff1c221f3fed689c8a5d346273a = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_44898ff1c221f3fed689c8a5d346273a,1);
call add_concept_set_members(@category_cab78827d0c7448c886fe0079dbd6576,@test_44898ff1c221f3fed689c8a5d346273a,1);

--  Row 34 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Calcaneus - Right, 2 views (X-ray)', 'calcaneus - right, 2 views (x-ray)', 'Text', 'Test', true);
set @test_835997568bb72ea0256f3e348ea80ff0 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_835997568bb72ea0256f3e348ea80ff0,1);
call add_concept_set_members(@category_cab78827d0c7448c886fe0079dbd6576,@test_835997568bb72ea0256f3e348ea80ff0,1);

--  Row 35 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Cervical spine, 2 or 3 views (X-ray)', 'cervical spine, 2 or 3 views (x-ray)', 'Text', 'Test', true);
set @test_9a74589bc77bc165b45f16c70160e9a1 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_9a74589bc77bc165b45f16c70160e9a1,1);
call add_concept_set_members(@category_da026ae6a9883a905303075bb47356f9,@test_9a74589bc77bc165b45f16c70160e9a1,1);

--  Row 36 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Thoracic and lumbar spine, 2 views (X-ray)', 'thoracic and lumbar spine, 2 views (x-ray)', 'Text', 'Test', true);
set @test_631f859197fc300a332272eaba65cde7 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_631f859197fc300a332272eaba65cde7,1);
call add_concept_set_members(@category_da026ae6a9883a905303075bb47356f9,@test_631f859197fc300a332272eaba65cde7,1);

--  Row 37 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Face', 'face', 'N/A', 'ConvSet', true);
set @category_71e609a3bc3abd964f4a339511a41512 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_71e609a3bc3abd964f4a339511a41512,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Sinuses, 3 views (X-ray)', 'sinuses, 3 views (x-ray)', 'Text', 'Test', true);
set @test_7941dd0782429857820c8b38c9ac97d8 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_7941dd0782429857820c8b38c9ac97d8,1);
call add_concept_set_members(@category_71e609a3bc3abd964f4a339511a41512,@test_7941dd0782429857820c8b38c9ac97d8,1);

--  Row 38 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Facial bones, 3 views (X-ray)', 'facial bones, 3 views (x-ray)', 'Text', 'Test', true);
set @test_820214e34e19ed14b297c06bdec89da0 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_820214e34e19ed14b297c06bdec89da0,1);
call add_concept_set_members(@category_71e609a3bc3abd964f4a339511a41512,@test_820214e34e19ed14b297c06bdec89da0,1);

--  Row 39 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Head', 'head', 'N/A', 'ConvSet', true);
set @category_8773ba93cf31796f94e0f37dbf930827 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_8773ba93cf31796f94e0f37dbf930827,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Skull, 4 views (X-ray)', 'skull, 4 views (x-ray)', 'Text', 'Test', true);
set @test_beda8f2ee9e43e7c165f7d2ff90d7897 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_beda8f2ee9e43e7c165f7d2ff90d7897,1);
call add_concept_set_members(@category_8773ba93cf31796f94e0f37dbf930827,@test_beda8f2ee9e43e7c165f7d2ff90d7897,1);

--  Row 40 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest, 4 views (X-ray)', 'chest, 4 views (x-ray)', 'Text', 'Test', true);
set @test_723a2e5411db699fbe2aa3df7cb17211 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_723a2e5411db699fbe2aa3df7cb17211,1);
call add_concept_set_members(@category_43d1a78d51b3f705a589ca0792ef1100,@test_723a2e5411db699fbe2aa3df7cb17211,1);

--  Row 41 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Mandible panorex (X-ray) ', 'mandible panorex (x-ray) ', 'Text', 'Test', true);
set @test_ec9c6d930218a622c3d56ee544e5555a = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_ec9c6d930218a622c3d56ee544e5555a,1);
call add_concept_set_members(@category_71e609a3bc3abd964f4a339511a41512,@test_ec9c6d930218a622c3d56ee544e5555a,1);

--  Row 42 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest lordotic (X-ray) ', 'chest lordotic (x-ray) ', 'Text', 'Test', true);
set @test_531b0f2e097541f8072365c79da72670 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_531b0f2e097541f8072365c79da72670,1);
call add_concept_set_members(@category_43d1a78d51b3f705a589ca0792ef1100,@test_531b0f2e097541f8072365c79da72670,1);

--  Row 43 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest oblique - Bilateral (X-ray) ', 'chest oblique - bilateral (x-ray) ', 'Text', 'Test', true);
set @test_a0e3076a3ca8536b3102ceeaefa8261f = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_a0e3076a3ca8536b3102ceeaefa8261f,1);
call add_concept_set_members(@category_43d1a78d51b3f705a589ca0792ef1100,@test_a0e3076a3ca8536b3102ceeaefa8261f,1);

--  Row 44 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Other', 'other', 'N/A', 'ConvSet', true);
set @category_e190a4d8aafd529ae3f2f0dd946d4d4b = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_e190a4d8aafd529ae3f2f0dd946d4d4b,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Kidney retrograde pyelogram (X-ray) ', 'kidney retrograde pyelogram (x-ray) ', 'Text', 'Test', true);
set @test_1c3e695f3d8b776aeb8d78732bf86e75 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_1c3e695f3d8b776aeb8d78732bf86e75,1);
call add_concept_set_members(@category_e190a4d8aafd529ae3f2f0dd946d4d4b,@test_1c3e695f3d8b776aeb8d78732bf86e75,1);

--  Row 45 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Acromioclavicular joints - Bilateral (X-ray) ', 'acromioclavicular joints - bilateral (x-ray) ', 'Text', 'Test', true);
set @test_aafc2df2ca27569c0c289e112db20ec6 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_aafc2df2ca27569c0c289e112db20ec6,1);
call add_concept_set_members(@category_136dc25f49adff33d86e0333f8029230,@test_aafc2df2ca27569c0c289e112db20ec6,1);

--  Row 46 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Abdomen AP (supine and lateraldecubitus) (X-ray) ', 'abdomen ap (supine and lateraldecubitus) (x-ray) ', 'Text', 'Test', true);
set @test_dfb704d372c8647ef2e80ca8c4d86ba2 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_dfb704d372c8647ef2e80ca8c4d86ba2,1);
call add_concept_set_members(@category_25cab97a2f284a3da48e78ccdc7a834b,@test_dfb704d372c8647ef2e80ca8c4d86ba2,1);

--  Row 47 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ankle - Left, 3 views (X-ray)', 'ankle - left, 3 views (x-ray)', 'Text', 'Test', true);
set @test_6f65b0e4a8570e7b600a604d1e09cf75 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_6f65b0e4a8570e7b600a604d1e09cf75,1);
call add_concept_set_members(@category_cab78827d0c7448c886fe0079dbd6576,@test_6f65b0e4a8570e7b600a604d1e09cf75,1);

--  Row 48 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ankle - Right, 3 views (X-ray)', 'ankle - right, 3 views (x-ray)', 'Text', 'Test', true);
set @test_52d7f886dd26d1a1041d988f6568ddfe = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_52d7f886dd26d1a1041d988f6568ddfe,1);
call add_concept_set_members(@category_cab78827d0c7448c886fe0079dbd6576,@test_52d7f886dd26d1a1041d988f6568ddfe,1);

--  Row 49 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Neck', 'neck', 'N/A', 'ConvSet', true);
set @category_8fe1668a2f4471d148fffbe6abab0498 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_8fe1668a2f4471d148fffbe6abab0498,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Neck soft tissue (X-ray)', 'neck soft tissue (x-ray)', 'Text', 'Test', true);
set @test_603c35ad683d67aca83d3081faca3ae9 = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_603c35ad683d67aca83d3081faca3ae9,1);
call add_concept_set_members(@category_8fe1668a2f4471d148fffbe6abab0498,@test_603c35ad683d67aca83d3081faca3ae9,1);

--  Row 50 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Temporomandibular joint, bilateral (XRay)', 'temporomandibular joint, bilateral (xray)', 'Text', 'Test', true);
set @test_98c03ab7ef6ac3a0109cdaecc55b77ae = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_98c03ab7ef6ac3a0109cdaecc55b77ae,1);
call add_concept_set_members(@category_71e609a3bc3abd964f4a339511a41512,@test_98c03ab7ef6ac3a0109cdaecc55b77ae,1);

--  Row 51 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Skull, 2 views (X-ray)', 'skull, 2 views (x-ray)', 'Text', 'Test', true);
set @test_b7cd4c521d3aec038358ad192c24228f = @concept_id;
call add_concept_set_members(@investigation_749b32e5a3b12506aa08dca9816784f3,@test_b7cd4c521d3aec038358ad192c24228f,1);
call add_concept_set_members(@category_8773ba93cf31796f94e0f37dbf930827,@test_b7cd4c521d3aec038358ad192c24228f,1);

--  Row 52 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Endoscopy', 'endoscopy', 'N/A', 'ConvSet', true);
set @investigation_8f10c62ed5ad22d6455c883558009c0b = @concept_id;
call add_concept_set_members(@other_investigations_concept_id,@investigation_8f10c62ed5ad22d6455c883558009c0b,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Advanced Procedure', 'advanced procedure', 'N/A', 'ConvSet', true);
set @category_f55ddda64b08cbe0da25be0253043f8a = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_f55ddda64b08cbe0da25be0253043f8a,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Anoscopy', 'anoscopy', 'Text', 'Test', true);
set @test_1671dcee9be803c2c4fc1978e31f56ba = @concept_id;
call add_concept_set_members(@investigation_8f10c62ed5ad22d6455c883558009c0b,@test_1671dcee9be803c2c4fc1978e31f56ba,1);
call add_concept_set_members(@category_f55ddda64b08cbe0da25be0253043f8a,@test_1671dcee9be803c2c4fc1978e31f56ba,1);

--  Row 53 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Bronchoscopy', 'bronchoscopy', 'Text', 'Test', true);
set @test_0e2d59879d91bf9977633f412f15707f = @concept_id;
call add_concept_set_members(@investigation_8f10c62ed5ad22d6455c883558009c0b,@test_0e2d59879d91bf9977633f412f15707f,1);
call add_concept_set_members(@category_f55ddda64b08cbe0da25be0253043f8a,@test_0e2d59879d91bf9977633f412f15707f,1);

--  Row 54 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Colonoscopy', 'colonoscopy', 'Text', 'Test', true);
set @test_5015f28cedd2665719bf4a10bf21559d = @concept_id;
call add_concept_set_members(@investigation_8f10c62ed5ad22d6455c883558009c0b,@test_5015f28cedd2665719bf4a10bf21559d,1);
call add_concept_set_members(@category_f55ddda64b08cbe0da25be0253043f8a,@test_5015f28cedd2665719bf4a10bf21559d,1);

--  Row 55 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Cystoscopy', 'cystoscopy', 'Text', 'Test', true);
set @test_43f0aaadc08f3d961d3e494638956028 = @concept_id;
call add_concept_set_members(@investigation_8f10c62ed5ad22d6455c883558009c0b,@test_43f0aaadc08f3d961d3e494638956028,1);
call add_concept_set_members(@category_f55ddda64b08cbe0da25be0253043f8a,@test_43f0aaadc08f3d961d3e494638956028,1);

--  Row 56 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Normal Procedure', 'normal procedure', 'N/A', 'ConvSet', true);
set @category_fe8e37f1ecf26a05ba0714e4aa34002d = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_fe8e37f1ecf26a05ba0714e4aa34002d,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Esophagogastroduodenoscopy (EGD)', 'esophagogastroduodenoscopy (egd)', 'Text', 'Test', true);
set @test_00d475a94f0fd7a0fa91173578c749df = @concept_id;
call add_concept_set_members(@investigation_8f10c62ed5ad22d6455c883558009c0b,@test_00d475a94f0fd7a0fa91173578c749df,1);
call add_concept_set_members(@category_fe8e37f1ecf26a05ba0714e4aa34002d,@test_00d475a94f0fd7a0fa91173578c749df,1);

--  Row 57 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Enteroscopy', 'enteroscopy', 'Text', 'Test', true);
set @test_b50335719f161f05a8605bc09719ff9c = @concept_id;
call add_concept_set_members(@investigation_8f10c62ed5ad22d6455c883558009c0b,@test_b50335719f161f05a8605bc09719ff9c,1);
call add_concept_set_members(@category_fe8e37f1ecf26a05ba0714e4aa34002d,@test_b50335719f161f05a8605bc09719ff9c,1);

--  Row 58 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Endoscopic retrograde cholangiopancreatography (ERCP)', 'endoscopic retrograde cholangiopancreatography (ercp)', 'Text', 'Test', true);
set @test_17c820108cfe59abd85cb6f1d5abbc31 = @concept_id;
call add_concept_set_members(@investigation_8f10c62ed5ad22d6455c883558009c0b,@test_17c820108cfe59abd85cb6f1d5abbc31,1);
call add_concept_set_members(@category_fe8e37f1ecf26a05ba0714e4aa34002d,@test_17c820108cfe59abd85cb6f1d5abbc31,1);

--  Row 59 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Laparoscopy', 'laparoscopy', 'Text', 'Test', true);
set @test_e3424af66c8891e7215a86665531cb93 = @concept_id;
call add_concept_set_members(@investigation_8f10c62ed5ad22d6455c883558009c0b,@test_e3424af66c8891e7215a86665531cb93,1);
call add_concept_set_members(@category_fe8e37f1ecf26a05ba0714e4aa34002d,@test_e3424af66c8891e7215a86665531cb93,1);

--  Row 60 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Sigmoidoscopy', 'sigmoidoscopy', 'Text', 'Test', true);
set @test_c92f3a2922317897595ca62598b7b00b = @concept_id;
call add_concept_set_members(@investigation_8f10c62ed5ad22d6455c883558009c0b,@test_c92f3a2922317897595ca62598b7b00b,1);
call add_concept_set_members(@category_fe8e37f1ecf26a05ba0714e4aa34002d,@test_c92f3a2922317897595ca62598b7b00b,1);


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

