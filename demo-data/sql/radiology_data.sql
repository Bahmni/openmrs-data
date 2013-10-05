set @concept_id = 0;
set @answer_concept_id = 0;
set @concept_name_short_id = 0;
set @concept_name_full_id = 0;

--  Row 0 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Radiology', 'radiology', 'N/A', 'ConvSet', true);
set @investigation_6a694d16a2c4b26cdd7b1fa8437bed92 = @concept_id;
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'X-ray', 'x-ray', 'N/A', 'ConvSet', true);
set @level_one_7cac08146f7d1f59d509c2e45471b825 = @concept_id;
call add_concept_set_members(@investigation_6a694d16a2c4b26cdd7b1fa8437bed92,@level_one_7cac08146f7d1f59d509c2e45471b825,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest', 'chest', 'N/A', 'ConvSet', true);
set @level_two_1f41dca921a09112275d5154d6c5b760 = @concept_id;
call add_concept_set_members(@level_one_7cac08146f7d1f59d509c2e45471b825,@level_two_1f41dca921a09112275d5154d6c5b760,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest, 1 view (X-ray) ', 'chest, 1 view (x-ray) ', 'Numeric', 'Test', true);
set @test_d8815cb2883e3181eae5b95c1bb4d29e = @concept_id;
call add_concept_set_members(@level_two_1f41dca921a09112275d5154d6c5b760,@test_d8815cb2883e3181eae5b95c1bb4d29e,1);

--  Row 1 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Spine', 'spine', 'N/A', 'ConvSet', true);
set @level_two_e93dbb39d829f3c44f122d0b08c8f357 = @concept_id;
call add_concept_set_members(@level_one_7cac08146f7d1f59d509c2e45471b825,@level_two_e93dbb39d829f3c44f122d0b08c8f357,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Spine, 1 view (X-ray) ', 'spine, 1 view (x-ray) ', 'Numeric', 'Test', true);
set @test_d837398da1a101e14a90332e0c39f6f6 = @concept_id;
call add_concept_set_members(@level_two_e93dbb39d829f3c44f122d0b08c8f357,@test_d837398da1a101e14a90332e0c39f6f6,1);

--  Row 2 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Pelvis', 'pelvis', 'N/A', 'ConvSet', true);
set @level_two_b29c5225d725eceed9dccf03ee7e15c9 = @concept_id;
call add_concept_set_members(@level_one_7cac08146f7d1f59d509c2e45471b825,@level_two_b29c5225d725eceed9dccf03ee7e15c9,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Pelvis, 1 view (X-ray) ', 'pelvis, 1 view (x-ray) ', 'Numeric', 'Test', true);
set @test_34be0b1d1fc2cdd4428ce32e193849b0 = @concept_id;
call add_concept_set_members(@level_two_b29c5225d725eceed9dccf03ee7e15c9,@test_34be0b1d1fc2cdd4428ce32e193849b0,1);

--  Row 3 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Abdomen', 'abdomen', 'N/A', 'ConvSet', true);
set @level_two_38710282a3887e9f1a867efddcaaf56b = @concept_id;
call add_concept_set_members(@level_one_7cac08146f7d1f59d509c2e45471b825,@level_two_38710282a3887e9f1a867efddcaaf56b,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Abdomen, 1 view (X-ray) ', 'abdomen, 1 view (x-ray) ', 'Numeric', 'Test', true);
set @test_6d4f2743c773e8290657a04769a17853 = @concept_id;
call add_concept_set_members(@level_two_38710282a3887e9f1a867efddcaaf56b,@test_6d4f2743c773e8290657a04769a17853,1);

--  Row 4 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Knee', 'knee', 'N/A', 'ConvSet', true);
set @level_two_4531954b8b99cb4d0375103979b27a8a = @concept_id;
call add_concept_set_members(@level_one_7cac08146f7d1f59d509c2e45471b825,@level_two_4531954b8b99cb4d0375103979b27a8a,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Knee - Left, 1 or 2 views (X-ray) ', 'knee - left, 1 or 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_63a99c26f87ec626b43b65700fbe08d8 = @concept_id;
call add_concept_set_members(@level_two_4531954b8b99cb4d0375103979b27a8a,@test_63a99c26f87ec626b43b65700fbe08d8,1);

--  Row 5 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Knee - Right, 1 or 2 views (X-ray) ', 'knee - right, 1 or 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_5ca631c7ae58824e1881df04ff9ffa3c = @concept_id;
call add_concept_set_members(@level_two_4531954b8b99cb4d0375103979b27a8a,@test_5ca631c7ae58824e1881df04ff9ffa3c,1);

--  Row 6 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest, 2 views (X-ray) ', 'chest, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_4e3cbd7c093f060a519efdba4b774f27 = @concept_id;
call add_concept_set_members(@level_two_1f41dca921a09112275d5154d6c5b760,@test_4e3cbd7c093f060a519efdba4b774f27,1);

--  Row 7 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hip', 'hip', 'N/A', 'ConvSet', true);
set @level_two_3533c56e4b7ebcd2c4aa73d8f6ae9023 = @concept_id;
call add_concept_set_members(@level_one_7cac08146f7d1f59d509c2e45471b825,@level_two_3533c56e4b7ebcd2c4aa73d8f6ae9023,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hip - Left, 2 views (X-ray) ', 'hip - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_e41bf6f1cea6709778c2f510456e94a1 = @concept_id;
call add_concept_set_members(@level_two_3533c56e4b7ebcd2c4aa73d8f6ae9023,@test_e41bf6f1cea6709778c2f510456e94a1,1);

--  Row 8 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hand', 'hand', 'N/A', 'ConvSet', true);
set @level_two_8cff12ec09126ebcb05f49318c577a14 = @concept_id;
call add_concept_set_members(@level_one_7cac08146f7d1f59d509c2e45471b825,@level_two_8cff12ec09126ebcb05f49318c577a14,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hand - Left, 2 views (X-ray) ', 'hand - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_ebe3d5d56cb3008dff6d0a54b29280e1 = @concept_id;
call add_concept_set_members(@level_two_8cff12ec09126ebcb05f49318c577a14,@test_ebe3d5d56cb3008dff6d0a54b29280e1,1);

--  Row 9 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hip - Right, 2 views (X-ray) ', 'hip - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_77316e7a531a48285beeb53719bc361e = @concept_id;
call add_concept_set_members(@level_two_3533c56e4b7ebcd2c4aa73d8f6ae9023,@test_77316e7a531a48285beeb53719bc361e,1);

--  Row 10 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ribs', 'ribs', 'N/A', 'ConvSet', true);
set @level_two_1e5af28b4d5c34081c77161a08232376 = @concept_id;
call add_concept_set_members(@level_one_7cac08146f7d1f59d509c2e45471b825,@level_two_1e5af28b4d5c34081c77161a08232376,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ribs - Left, 2 views (X-ray) ', 'ribs - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_7c5ff78fd1468fdda0c8ad79680b7f34 = @concept_id;
call add_concept_set_members(@level_two_1e5af28b4d5c34081c77161a08232376,@test_7c5ff78fd1468fdda0c8ad79680b7f34,1);

--  Row 11 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Leg', 'leg', 'N/A', 'ConvSet', true);
set @level_two_27f1623ead3994ee5ec8fff14a819a70 = @concept_id;
call add_concept_set_members(@level_one_7cac08146f7d1f59d509c2e45471b825,@level_two_27f1623ead3994ee5ec8fff14a819a70,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Foot - Left, 2 views (X-ray) ', 'foot - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_1cfe3885499949987f94c53646e0d3ce = @concept_id;
call add_concept_set_members(@level_two_27f1623ead3994ee5ec8fff14a819a70,@test_1cfe3885499949987f94c53646e0d3ce,1);

--  Row 12 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Femur - Left, 2 views (X-ray) ', 'femur - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_1ebe120881fc3b6fa53b127145fef4a2 = @concept_id;
call add_concept_set_members(@level_two_27f1623ead3994ee5ec8fff14a819a70,@test_1ebe120881fc3b6fa53b127145fef4a2,1);

--  Row 13 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ribs - Right, 2 views (X-ray) ', 'ribs - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_8ea6589c2b3281154a7b19ed964032da = @concept_id;
call add_concept_set_members(@level_two_1e5af28b4d5c34081c77161a08232376,@test_8ea6589c2b3281154a7b19ed964032da,1);

--  Row 14 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Foot - Right, 2 views (X-ray) ', 'foot - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_09e3d317101636e0f288711db6071be7 = @concept_id;
call add_concept_set_members(@level_two_27f1623ead3994ee5ec8fff14a819a70,@test_09e3d317101636e0f288711db6071be7,1);

--  Row 15 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Arm', 'arm', 'N/A', 'ConvSet', true);
set @level_two_19ebdf4b23fb26e1b35511165de1c2dc = @concept_id;
call add_concept_set_members(@level_one_7cac08146f7d1f59d509c2e45471b825,@level_two_19ebdf4b23fb26e1b35511165de1c2dc,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Elbow - Left, 2 views (X-ray) ', 'elbow - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_43a88ea50a5186c3c0d614e30b4fbf19 = @concept_id;
call add_concept_set_members(@level_two_19ebdf4b23fb26e1b35511165de1c2dc,@test_43a88ea50a5186c3c0d614e30b4fbf19,1);

--  Row 16 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hand - Right, 2 views (X-ray) ', 'hand - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_be553f06a0c2df9a221e55babacc82d0 = @concept_id;
call add_concept_set_members(@level_two_19ebdf4b23fb26e1b35511165de1c2dc,@test_be553f06a0c2df9a221e55babacc82d0,1);

--  Row 17 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Wrist - Left, 2 views (X-ray) ', 'wrist - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_fbeea8771516088c6bc5b041d22d451c = @concept_id;
call add_concept_set_members(@level_two_19ebdf4b23fb26e1b35511165de1c2dc,@test_fbeea8771516088c6bc5b041d22d451c,1);

--  Row 18 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Elbow - Right, 2 views (X-ray) ', 'elbow - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_4e0adb2dcf6693ba5ccb8ace4fc06cd2 = @concept_id;
call add_concept_set_members(@level_two_19ebdf4b23fb26e1b35511165de1c2dc,@test_4e0adb2dcf6693ba5ccb8ace4fc06cd2,1);

--  Row 19 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Wrist - Right, 2 views (X-ray) ', 'wrist - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_24c13ce8ebde521b7dbbced41cdff44f = @concept_id;
call add_concept_set_members(@level_two_19ebdf4b23fb26e1b35511165de1c2dc,@test_24c13ce8ebde521b7dbbced41cdff44f,1);

--  Row 20 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Femur - Right, 2 views (X-ray) ', 'femur - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_575dc2772f1865235c2d938d3f8798bb = @concept_id;
call add_concept_set_members(@level_two_27f1623ead3994ee5ec8fff14a819a70,@test_575dc2772f1865235c2d938d3f8798bb,1);

--  Row 21 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Forearm - Left, 2 views (X-ray) ', 'forearm - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_7a82f0ce753a7ed3cf2af6c5bd946941 = @concept_id;
call add_concept_set_members(@level_two_19ebdf4b23fb26e1b35511165de1c2dc,@test_7a82f0ce753a7ed3cf2af6c5bd946941,1);

--  Row 22 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Humerus - Left, 2 views (X-ray) ', 'humerus - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_089b8bac1c56f57e857b37ad11cfedf5 = @concept_id;
call add_concept_set_members(@level_two_19ebdf4b23fb26e1b35511165de1c2dc,@test_089b8bac1c56f57e857b37ad11cfedf5,1);

--  Row 23 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Lumbar spine, 2 or 3 views (X-ray) ', 'lumbar spine, 2 or 3 views (x-ray) ', 'Numeric', 'Test', true);
set @test_fefd48f6dc507f3686f7b9896049bd28 = @concept_id;
call add_concept_set_members(@level_two_e93dbb39d829f3c44f122d0b08c8f357,@test_fefd48f6dc507f3686f7b9896049bd28,1);

--  Row 24 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Forearm - Right, 2 views (X-ray) ', 'forearm - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_4f825bec44907d9b17716492422f9336 = @concept_id;
call add_concept_set_members(@level_two_19ebdf4b23fb26e1b35511165de1c2dc,@test_4f825bec44907d9b17716492422f9336,1);

--  Row 25 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Shoulder', 'shoulder', 'N/A', 'ConvSet', true);
set @level_two_f393dd5c4c7e3887691b001ee72d86e5 = @concept_id;
call add_concept_set_members(@level_one_7cac08146f7d1f59d509c2e45471b825,@level_two_f393dd5c4c7e3887691b001ee72d86e5,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Clavicle - Left, 2 views (X-ray) ', 'clavicle - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_b5b0687229b7bb3caf2533ca7d3b6e8d = @concept_id;
call add_concept_set_members(@level_two_f393dd5c4c7e3887691b001ee72d86e5,@test_b5b0687229b7bb3caf2533ca7d3b6e8d,1);

--  Row 26 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Humerus - Right, 2 views (X-ray) ', 'humerus - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_695892afa7b9e233a3a2e8669e821f97 = @concept_id;
call add_concept_set_members(@level_two_19ebdf4b23fb26e1b35511165de1c2dc,@test_695892afa7b9e233a3a2e8669e821f97,1);

--  Row 27 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Shoulder - Left, 2 views (X-ray) ', 'shoulder - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_e3f6df3aebe0a702536bdb9acb019311 = @concept_id;
call add_concept_set_members(@level_two_f393dd5c4c7e3887691b001ee72d86e5,@test_e3f6df3aebe0a702536bdb9acb019311,1);

--  Row 28 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Shoulder - Right, 2 views (X-ray) ', 'shoulder - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_d0d1e6dce671aaeca9f91078fce2534a = @concept_id;
call add_concept_set_members(@level_two_f393dd5c4c7e3887691b001ee72d86e5,@test_d0d1e6dce671aaeca9f91078fce2534a,1);

--  Row 29 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Lower leg - Left, 2 views (X-ray) ', 'lower leg - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_598a0233e9088200a86f8fb8db2612ae = @concept_id;
call add_concept_set_members(@level_two_27f1623ead3994ee5ec8fff14a819a70,@test_598a0233e9088200a86f8fb8db2612ae,1);

--  Row 30 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Calcaneus - Left, 2 views (X-ray) ', 'calcaneus - left, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_9c18c0997de8bc25ffb13edb37f5dbaf = @concept_id;
call add_concept_set_members(@level_two_27f1623ead3994ee5ec8fff14a819a70,@test_9c18c0997de8bc25ffb13edb37f5dbaf,1);

--  Row 31 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Thoracic spine, 2 views (X-ray) ', 'thoracic spine, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_39509efa2f54ba989def9559fbb6afc2 = @concept_id;
call add_concept_set_members(@level_two_e93dbb39d829f3c44f122d0b08c8f357,@test_39509efa2f54ba989def9559fbb6afc2,1);

--  Row 32 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Clavicle - Right, 2 views (X-ray) ', 'clavicle - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_1502139363fc1506597b398df8910bc7 = @concept_id;
call add_concept_set_members(@level_two_f393dd5c4c7e3887691b001ee72d86e5,@test_1502139363fc1506597b398df8910bc7,1);

--  Row 33 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Lower leg - Right, 2 views (X-ray) ', 'lower leg - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_75c9884ad158cdb7a31dbf5ed4db997c = @concept_id;
call add_concept_set_members(@level_two_27f1623ead3994ee5ec8fff14a819a70,@test_75c9884ad158cdb7a31dbf5ed4db997c,1);

--  Row 34 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Calcaneus - Right, 2 views (X-ray) ', 'calcaneus - right, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_9153152a718f5c23907dff446191db5c = @concept_id;
call add_concept_set_members(@level_two_27f1623ead3994ee5ec8fff14a819a70,@test_9153152a718f5c23907dff446191db5c,1);

--  Row 35 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Cervical spine, 2 or 3 views (X-ray) ', 'cervical spine, 2 or 3 views (x-ray) ', 'Numeric', 'Test', true);
set @test_ef7008283a05cfde05784dbd1e78f02f = @concept_id;
call add_concept_set_members(@level_two_e93dbb39d829f3c44f122d0b08c8f357,@test_ef7008283a05cfde05784dbd1e78f02f,1);

--  Row 36 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Thoracic and lumbar spine, 2 views (X-ray) ', 'thoracic and lumbar spine, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_a13fdd8b2d1b2db04c2de2da03312c1b = @concept_id;
call add_concept_set_members(@level_two_e93dbb39d829f3c44f122d0b08c8f357,@test_a13fdd8b2d1b2db04c2de2da03312c1b,1);

--  Row 37 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Face', 'face', 'N/A', 'ConvSet', true);
set @level_two_098153461a667093d7139b8da2550744 = @concept_id;
call add_concept_set_members(@level_one_7cac08146f7d1f59d509c2e45471b825,@level_two_098153461a667093d7139b8da2550744,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Sinuses, 3 views (X-ray) ', 'sinuses, 3 views (x-ray) ', 'Numeric', 'Test', true);
set @test_a2a9103b1ef6a3f170e54573077ce1a4 = @concept_id;
call add_concept_set_members(@level_two_098153461a667093d7139b8da2550744,@test_a2a9103b1ef6a3f170e54573077ce1a4,1);

--  Row 38 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Facial bones, 3 views (X-ray) ', 'facial bones, 3 views (x-ray) ', 'Numeric', 'Test', true);
set @test_4dd6952307d11ccfff32348ba9fba5f2 = @concept_id;
call add_concept_set_members(@level_two_098153461a667093d7139b8da2550744,@test_4dd6952307d11ccfff32348ba9fba5f2,1);

--  Row 39 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Head', 'head', 'N/A', 'ConvSet', true);
set @level_two_c286fb15df98afef57e57352f1bbc426 = @concept_id;
call add_concept_set_members(@level_one_7cac08146f7d1f59d509c2e45471b825,@level_two_c286fb15df98afef57e57352f1bbc426,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Skull, 4 views (X-ray) ', 'skull, 4 views (x-ray) ', 'Numeric', 'Test', true);
set @test_505b2d8238acbb827e400f6d729cc481 = @concept_id;
call add_concept_set_members(@level_two_c286fb15df98afef57e57352f1bbc426,@test_505b2d8238acbb827e400f6d729cc481,1);

--  Row 40 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest, 4 views (X-ray) ', 'chest, 4 views (x-ray) ', 'Numeric', 'Test', true);
set @test_60a50a9e83fe894b438ec237fc68190b = @concept_id;
call add_concept_set_members(@level_two_1f41dca921a09112275d5154d6c5b760,@test_60a50a9e83fe894b438ec237fc68190b,1);

--  Row 41 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Mandible panorex (X-ray) ', 'mandible panorex (x-ray) ', 'Numeric', 'Test', true);
set @test_237a16c364a0cd277e5ca5a591821eef = @concept_id;
call add_concept_set_members(@level_two_098153461a667093d7139b8da2550744,@test_237a16c364a0cd277e5ca5a591821eef,1);

--  Row 42 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest lordotic (X-ray) ', 'chest lordotic (x-ray) ', 'Numeric', 'Test', true);
set @test_3dd04bc1f1573595346903d6d4bedc27 = @concept_id;
call add_concept_set_members(@level_two_1f41dca921a09112275d5154d6c5b760,@test_3dd04bc1f1573595346903d6d4bedc27,1);

--  Row 43 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest oblique - Bilateral (X-ray) ', 'chest oblique - bilateral (x-ray) ', 'Numeric', 'Test', true);
set @test_60b36e74d37dfe7d6a3a74309b1845a4 = @concept_id;
call add_concept_set_members(@level_two_1f41dca921a09112275d5154d6c5b760,@test_60b36e74d37dfe7d6a3a74309b1845a4,1);

--  Row 44 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Other', 'other', 'N/A', 'ConvSet', true);
set @level_two_1e7710b0d09de9e027b1286f5948802c = @concept_id;
call add_concept_set_members(@level_one_7cac08146f7d1f59d509c2e45471b825,@level_two_1e7710b0d09de9e027b1286f5948802c,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Kidney retrograde pyelogram (X-ray) ', 'kidney retrograde pyelogram (x-ray) ', 'Numeric', 'Test', true);
set @test_14882f8724e6ac6e5658c198f4c82c78 = @concept_id;
call add_concept_set_members(@level_two_1e7710b0d09de9e027b1286f5948802c,@test_14882f8724e6ac6e5658c198f4c82c78,1);

--  Row 45 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Acromioclavicular joints - Bilateral (X-ray) ', 'acromioclavicular joints - bilateral (x-ray) ', 'Numeric', 'Test', true);
set @test_315b9664489ac7dc076bd8926f870c43 = @concept_id;
call add_concept_set_members(@level_two_f393dd5c4c7e3887691b001ee72d86e5,@test_315b9664489ac7dc076bd8926f870c43,1);

--  Row 46 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Abdomen AP (supine and lateraldecubitus) (X-ray) ', 'abdomen ap (supine and lateraldecubitus) (x-ray) ', 'Numeric', 'Test', true);
set @test_92f46353cde1c320f067fc4ce3c2b1b8 = @concept_id;
call add_concept_set_members(@level_two_38710282a3887e9f1a867efddcaaf56b,@test_92f46353cde1c320f067fc4ce3c2b1b8,1);

--  Row 47 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ankle - Left, 3 views (X-ray) ', 'ankle - left, 3 views (x-ray) ', 'Numeric', 'Test', true);
set @test_992671f2ee2878af3ac72b786b9d87b9 = @concept_id;
call add_concept_set_members(@level_two_27f1623ead3994ee5ec8fff14a819a70,@test_992671f2ee2878af3ac72b786b9d87b9,1);

--  Row 48 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ankle - Right, 3 views (X-ray) ', 'ankle - right, 3 views (x-ray) ', 'Numeric', 'Test', true);
set @test_5613a6e3967e656001851b7acbcfa8c3 = @concept_id;
call add_concept_set_members(@level_two_27f1623ead3994ee5ec8fff14a819a70,@test_5613a6e3967e656001851b7acbcfa8c3,1);

--  Row 49 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Neck', 'neck', 'N/A', 'ConvSet', true);
set @level_two_a36030019ecb68a7ce93b4356aad390f = @concept_id;
call add_concept_set_members(@level_one_7cac08146f7d1f59d509c2e45471b825,@level_two_a36030019ecb68a7ce93b4356aad390f,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Neck soft tissue (X-ray) ', 'neck soft tissue (x-ray) ', 'Numeric', 'Test', true);
set @test_10fb4975117afdc809a84089f5673f9c = @concept_id;
call add_concept_set_members(@level_two_a36030019ecb68a7ce93b4356aad390f,@test_10fb4975117afdc809a84089f5673f9c,1);

--  Row 50 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Temporomandibular joint, bilateral (XRay) ', 'temporomandibular joint, bilateral (xray) ', 'Numeric', 'Test', true);
set @test_9b92da9b22a2208899ed627f2837b9e8 = @concept_id;
call add_concept_set_members(@level_two_098153461a667093d7139b8da2550744,@test_9b92da9b22a2208899ed627f2837b9e8,1);

--  Row 51 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Skull, 2 views (X-ray) ', 'skull, 2 views (x-ray) ', 'Numeric', 'Test', true);
set @test_c5eadbb161b42d0b3895c901fd687b58 = @concept_id;
call add_concept_set_members(@level_two_c286fb15df98afef57e57352f1bbc426,@test_c5eadbb161b42d0b3895c901fd687b58,1);
