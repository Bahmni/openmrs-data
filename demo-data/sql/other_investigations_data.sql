set @concept_id = 0;
set @answer_concept_id = 0;
set @concept_name_short_id = 0;
set @concept_name_full_id = 0;
select concept_id INTO @other_investigations_concept_id from concept_name where name='Other Investigations' and concept_name_type = 'FULLY_SPECIFIED' and voided = 0;

select concept_id INTO @other_investigations_categories_concept_id from concept_name where name='Other Investigations Categories' and concept_name_type = 'FULLY_SPECIFIED' and voided = 0;


--  Row 0 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Radiology', 'radiology', 'N/A', 'ConvSet', true);
set @investigation_fd2818395111bf80fc057f47ad9c7eed = @concept_id;
call add_concept_set_members(@other_investigations_concept_id,@investigation_fd2818395111bf80fc057f47ad9c7eed,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest', 'chest', 'N/A', 'ConvSet', true);
set @category_5587e3c8fc4a3d2aa574fabfb8768e56 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_5587e3c8fc4a3d2aa574fabfb8768e56,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest, 1 view (X-ray)', 'chest, 1 view (x-ray)', 'Numeric', 'Test', true);
set @test_371ccd3a0872bd96d80fd13ce11cf3ac = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_371ccd3a0872bd96d80fd13ce11cf3ac,1);
call add_concept_set_members(@category_5587e3c8fc4a3d2aa574fabfb8768e56,@test_371ccd3a0872bd96d80fd13ce11cf3ac,1);

--  Row 1 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Spine', 'spine', 'N/A', 'ConvSet', true);
set @category_ffb211f253de2d81a7e8a4623eb73d2f = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_ffb211f253de2d81a7e8a4623eb73d2f,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Spine, 1 view (X-ray)', 'spine, 1 view (x-ray)', 'Numeric', 'Test', true);
set @test_ea55018e3916f9061118ba74615920d0 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_ea55018e3916f9061118ba74615920d0,1);
call add_concept_set_members(@category_ffb211f253de2d81a7e8a4623eb73d2f,@test_ea55018e3916f9061118ba74615920d0,1);

--  Row 2 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Pelvis', 'pelvis', 'N/A', 'ConvSet', true);
set @category_34de9642806fe6b05f6776647b1913b0 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_34de9642806fe6b05f6776647b1913b0,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Pelvis, 1 view (X-ray)', 'pelvis, 1 view (x-ray)', 'Numeric', 'Test', true);
set @test_992ac7f60324f87fb1ba47f96813641b = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_992ac7f60324f87fb1ba47f96813641b,1);
call add_concept_set_members(@category_34de9642806fe6b05f6776647b1913b0,@test_992ac7f60324f87fb1ba47f96813641b,1);

--  Row 3 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Abdomen', 'abdomen', 'N/A', 'ConvSet', true);
set @category_496256e5f5ac7f48a629cfb8265faf18 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_496256e5f5ac7f48a629cfb8265faf18,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Abdomen, 1 view (X-ray)', 'abdomen, 1 view (x-ray)', 'Numeric', 'Test', true);
set @test_926c9c4efd6ea1f6af8cf98a89ce676a = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_926c9c4efd6ea1f6af8cf98a89ce676a,1);
call add_concept_set_members(@category_496256e5f5ac7f48a629cfb8265faf18,@test_926c9c4efd6ea1f6af8cf98a89ce676a,1);

--  Row 4 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Knee', 'knee', 'N/A', 'ConvSet', true);
set @category_204188d05f87094a97a50aaaef8ed488 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_204188d05f87094a97a50aaaef8ed488,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Knee - Left, 1 or 2 views (X-ray)', 'knee - left, 1 or 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_137b4be5f7035ae82bf075a0a21b4349 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_137b4be5f7035ae82bf075a0a21b4349,1);
call add_concept_set_members(@category_204188d05f87094a97a50aaaef8ed488,@test_137b4be5f7035ae82bf075a0a21b4349,1);

--  Row 5 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Knee - Right, 1 or 2 views (X-ray)', 'knee - right, 1 or 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_639e0c1d52bd6e6d8948c17b70f58b0b = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_639e0c1d52bd6e6d8948c17b70f58b0b,1);
call add_concept_set_members(@category_204188d05f87094a97a50aaaef8ed488,@test_639e0c1d52bd6e6d8948c17b70f58b0b,1);

--  Row 6 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest, 2 views (X-ray)', 'chest, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_21ab70a875df98655d3892e507e3fec3 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_21ab70a875df98655d3892e507e3fec3,1);
call add_concept_set_members(@category_5587e3c8fc4a3d2aa574fabfb8768e56,@test_21ab70a875df98655d3892e507e3fec3,1);

--  Row 7 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hip', 'hip', 'N/A', 'ConvSet', true);
set @category_8ba70cd52e26fd88593d4370917840e3 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_8ba70cd52e26fd88593d4370917840e3,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hip - Left, 2 views (X-ray)', 'hip - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_f3dfafeb73fe07688db267fe77d9ba89 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_f3dfafeb73fe07688db267fe77d9ba89,1);
call add_concept_set_members(@category_8ba70cd52e26fd88593d4370917840e3,@test_f3dfafeb73fe07688db267fe77d9ba89,1);

--  Row 8 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hand', 'hand', 'N/A', 'ConvSet', true);
set @category_c2270651854a0bf62596b91a766fee94 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_c2270651854a0bf62596b91a766fee94,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hand - Left, 2 views (X-ray)', 'hand - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_d4da4acec1539447a667e877fbc1fbf3 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_d4da4acec1539447a667e877fbc1fbf3,1);
call add_concept_set_members(@category_c2270651854a0bf62596b91a766fee94,@test_d4da4acec1539447a667e877fbc1fbf3,1);

--  Row 9 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hip - Right, 2 views (X-ray)', 'hip - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_e43207e089bfa8672e25c9a21c74406c = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_e43207e089bfa8672e25c9a21c74406c,1);
call add_concept_set_members(@category_8ba70cd52e26fd88593d4370917840e3,@test_e43207e089bfa8672e25c9a21c74406c,1);

--  Row 10 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ribs', 'ribs', 'N/A', 'ConvSet', true);
set @category_6f67f7258188ddb896e2031e507f3a65 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_6f67f7258188ddb896e2031e507f3a65,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ribs - Left, 2 views (X-ray)', 'ribs - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_217a6b2808fb14de1907120cb6269215 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_217a6b2808fb14de1907120cb6269215,1);
call add_concept_set_members(@category_6f67f7258188ddb896e2031e507f3a65,@test_217a6b2808fb14de1907120cb6269215,1);

--  Row 11 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Leg', 'leg', 'N/A', 'ConvSet', true);
set @category_59130f6db52a3b28ab79f5cc48b8a523 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_59130f6db52a3b28ab79f5cc48b8a523,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Foot - Left, 2 views (X-ray)', 'foot - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_9a72af620a6cb4ec45c799b02cafb2df = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_9a72af620a6cb4ec45c799b02cafb2df,1);
call add_concept_set_members(@category_59130f6db52a3b28ab79f5cc48b8a523,@test_9a72af620a6cb4ec45c799b02cafb2df,1);

--  Row 12 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Femur - Left, 2 views (X-ray)', 'femur - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_4591f5eee25f798ad65b7bdf23c71109 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_4591f5eee25f798ad65b7bdf23c71109,1);
call add_concept_set_members(@category_59130f6db52a3b28ab79f5cc48b8a523,@test_4591f5eee25f798ad65b7bdf23c71109,1);

--  Row 13 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ribs - Right, 2 views (X-ray)', 'ribs - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_fb630c87428ae0cc950b955bfe7e829d = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_fb630c87428ae0cc950b955bfe7e829d,1);
call add_concept_set_members(@category_6f67f7258188ddb896e2031e507f3a65,@test_fb630c87428ae0cc950b955bfe7e829d,1);

--  Row 14 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Foot - Right, 2 views (X-ray)', 'foot - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_1562a74212289ec68bf554cc5e53c565 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_1562a74212289ec68bf554cc5e53c565,1);
call add_concept_set_members(@category_59130f6db52a3b28ab79f5cc48b8a523,@test_1562a74212289ec68bf554cc5e53c565,1);

--  Row 15 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Arm', 'arm', 'N/A', 'ConvSet', true);
set @category_31cf9a16e0d9044f12dd0c827208e3a1 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_31cf9a16e0d9044f12dd0c827208e3a1,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Elbow - Left, 2 views (X-ray)', 'elbow - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_6f4c5938c361ee621ec5900fbd583ed7 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_6f4c5938c361ee621ec5900fbd583ed7,1);
call add_concept_set_members(@category_31cf9a16e0d9044f12dd0c827208e3a1,@test_6f4c5938c361ee621ec5900fbd583ed7,1);

--  Row 16 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Hand - Right, 2 views (X-ray)', 'hand - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_e3d031f242b503b22883613d6dde0106 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_e3d031f242b503b22883613d6dde0106,1);
call add_concept_set_members(@category_31cf9a16e0d9044f12dd0c827208e3a1,@test_e3d031f242b503b22883613d6dde0106,1);

--  Row 17 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Wrist - Left, 2 views (X-ray)', 'wrist - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_e8ff404368a86a55995bf46a412f8b00 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_e8ff404368a86a55995bf46a412f8b00,1);
call add_concept_set_members(@category_31cf9a16e0d9044f12dd0c827208e3a1,@test_e8ff404368a86a55995bf46a412f8b00,1);

--  Row 18 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Elbow - Right, 2 views (X-ray)', 'elbow - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_de56569fcfd3fe150e83d83e83e96b9c = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_de56569fcfd3fe150e83d83e83e96b9c,1);
call add_concept_set_members(@category_31cf9a16e0d9044f12dd0c827208e3a1,@test_de56569fcfd3fe150e83d83e83e96b9c,1);

--  Row 19 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Wrist - Right, 2 views (X-ray)', 'wrist - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_ddce753274475c309014291a5afdda31 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_ddce753274475c309014291a5afdda31,1);
call add_concept_set_members(@category_31cf9a16e0d9044f12dd0c827208e3a1,@test_ddce753274475c309014291a5afdda31,1);

--  Row 20 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Femur - Right, 2 views (X-ray)', 'femur - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_b4899f2ed0c563abd0e92ab5559df72d = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_b4899f2ed0c563abd0e92ab5559df72d,1);
call add_concept_set_members(@category_59130f6db52a3b28ab79f5cc48b8a523,@test_b4899f2ed0c563abd0e92ab5559df72d,1);

--  Row 21 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Forearm - Left, 2 views (X-ray)', 'forearm - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_cb8becb88c59d43ba72899dfdfa40137 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_cb8becb88c59d43ba72899dfdfa40137,1);
call add_concept_set_members(@category_31cf9a16e0d9044f12dd0c827208e3a1,@test_cb8becb88c59d43ba72899dfdfa40137,1);

--  Row 22 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Humerus - Left, 2 views (X-ray)', 'humerus - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_8a0c70f3f4f9e23c3b91d0a5a15123b1 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_8a0c70f3f4f9e23c3b91d0a5a15123b1,1);
call add_concept_set_members(@category_31cf9a16e0d9044f12dd0c827208e3a1,@test_8a0c70f3f4f9e23c3b91d0a5a15123b1,1);

--  Row 23 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Lumbar spine, 2 or 3 views (X-ray)', 'lumbar spine, 2 or 3 views (x-ray)', 'Numeric', 'Test', true);
set @test_f907fb72fa1d0edeb3de97f8ceb03ce8 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_f907fb72fa1d0edeb3de97f8ceb03ce8,1);
call add_concept_set_members(@category_ffb211f253de2d81a7e8a4623eb73d2f,@test_f907fb72fa1d0edeb3de97f8ceb03ce8,1);

--  Row 24 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Forearm - Right, 2 views (X-ray)', 'forearm - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_d9199ffbeadc85551ef5ffbc55794a04 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_d9199ffbeadc85551ef5ffbc55794a04,1);
call add_concept_set_members(@category_31cf9a16e0d9044f12dd0c827208e3a1,@test_d9199ffbeadc85551ef5ffbc55794a04,1);

--  Row 25 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Shoulder', 'shoulder', 'N/A', 'ConvSet', true);
set @category_98b5524789babb2c1bc39885a9bc97b5 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_98b5524789babb2c1bc39885a9bc97b5,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Clavicle - Left, 2 views (X-ray)', 'clavicle - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_1c040a6808171ad5854b8c8853190224 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_1c040a6808171ad5854b8c8853190224,1);
call add_concept_set_members(@category_98b5524789babb2c1bc39885a9bc97b5,@test_1c040a6808171ad5854b8c8853190224,1);

--  Row 26 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Humerus - Right, 2 views (X-ray)', 'humerus - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_6d630709b2035aec99caa220d1f10487 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_6d630709b2035aec99caa220d1f10487,1);
call add_concept_set_members(@category_31cf9a16e0d9044f12dd0c827208e3a1,@test_6d630709b2035aec99caa220d1f10487,1);

--  Row 27 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Shoulder - Left, 2 views (X-ray)', 'shoulder - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_f4b26332a33b6bf3d76c2f86bc909741 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_f4b26332a33b6bf3d76c2f86bc909741,1);
call add_concept_set_members(@category_98b5524789babb2c1bc39885a9bc97b5,@test_f4b26332a33b6bf3d76c2f86bc909741,1);

--  Row 28 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Shoulder - Right, 2 views (X-ray)', 'shoulder - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_497b7afa6442fc5e0715206de882cd77 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_497b7afa6442fc5e0715206de882cd77,1);
call add_concept_set_members(@category_98b5524789babb2c1bc39885a9bc97b5,@test_497b7afa6442fc5e0715206de882cd77,1);

--  Row 29 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Lower leg - Left, 2 views (X-ray)', 'lower leg - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_0dc53879ca5e6d9e31757e7c7f948e8d = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_0dc53879ca5e6d9e31757e7c7f948e8d,1);
call add_concept_set_members(@category_59130f6db52a3b28ab79f5cc48b8a523,@test_0dc53879ca5e6d9e31757e7c7f948e8d,1);

--  Row 30 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Calcaneus - Left, 2 views (X-ray)', 'calcaneus - left, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_980782c431526107decea8dba6f55e96 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_980782c431526107decea8dba6f55e96,1);
call add_concept_set_members(@category_59130f6db52a3b28ab79f5cc48b8a523,@test_980782c431526107decea8dba6f55e96,1);

--  Row 31 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Thoracic spine, 2 views (X-ray)', 'thoracic spine, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_2c6e4e3c13556179983302bbf93606d2 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_2c6e4e3c13556179983302bbf93606d2,1);
call add_concept_set_members(@category_ffb211f253de2d81a7e8a4623eb73d2f,@test_2c6e4e3c13556179983302bbf93606d2,1);

--  Row 32 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Clavicle - Right, 2 views (X-ray)', 'clavicle - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_e1cd45347c6df23322aab75d2b274739 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_e1cd45347c6df23322aab75d2b274739,1);
call add_concept_set_members(@category_98b5524789babb2c1bc39885a9bc97b5,@test_e1cd45347c6df23322aab75d2b274739,1);

--  Row 33 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Lower leg - Right, 2 views (X-ray)', 'lower leg - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_96c538352be9722843093fefcd95dab7 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_96c538352be9722843093fefcd95dab7,1);
call add_concept_set_members(@category_59130f6db52a3b28ab79f5cc48b8a523,@test_96c538352be9722843093fefcd95dab7,1);

--  Row 34 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Calcaneus - Right, 2 views (X-ray)', 'calcaneus - right, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_7172b350d53a1b5d95a3bd1ab621301a = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_7172b350d53a1b5d95a3bd1ab621301a,1);
call add_concept_set_members(@category_59130f6db52a3b28ab79f5cc48b8a523,@test_7172b350d53a1b5d95a3bd1ab621301a,1);

--  Row 35 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Cervical spine, 2 or 3 views (X-ray)', 'cervical spine, 2 or 3 views (x-ray)', 'Numeric', 'Test', true);
set @test_c487136ea1c4792cb0dcf34ff9aece65 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_c487136ea1c4792cb0dcf34ff9aece65,1);
call add_concept_set_members(@category_ffb211f253de2d81a7e8a4623eb73d2f,@test_c487136ea1c4792cb0dcf34ff9aece65,1);

--  Row 36 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Thoracic and lumbar spine, 2 views (X-ray)', 'thoracic and lumbar spine, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_c5e8a6a32f00a632db183ea4a8b6e1af = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_c5e8a6a32f00a632db183ea4a8b6e1af,1);
call add_concept_set_members(@category_ffb211f253de2d81a7e8a4623eb73d2f,@test_c5e8a6a32f00a632db183ea4a8b6e1af,1);

--  Row 37 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Face', 'face', 'N/A', 'ConvSet', true);
set @category_37a3f348e6bd380768394e2de4f57637 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_37a3f348e6bd380768394e2de4f57637,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Sinuses, 3 views (X-ray)', 'sinuses, 3 views (x-ray)', 'Numeric', 'Test', true);
set @test_31e5784a8ca600ca8fef91cb25043ade = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_31e5784a8ca600ca8fef91cb25043ade,1);
call add_concept_set_members(@category_37a3f348e6bd380768394e2de4f57637,@test_31e5784a8ca600ca8fef91cb25043ade,1);

--  Row 38 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Facial bones, 3 views (X-ray)', 'facial bones, 3 views (x-ray)', 'Numeric', 'Test', true);
set @test_e0e5efbbf41019d3102d855c79168247 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_e0e5efbbf41019d3102d855c79168247,1);
call add_concept_set_members(@category_37a3f348e6bd380768394e2de4f57637,@test_e0e5efbbf41019d3102d855c79168247,1);

--  Row 39 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Head', 'head', 'N/A', 'ConvSet', true);
set @category_e0b79419fa82faea260a57b7609f8df4 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_e0b79419fa82faea260a57b7609f8df4,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Skull, 4 views (X-ray)', 'skull, 4 views (x-ray)', 'Numeric', 'Test', true);
set @test_27c4d57e375f6a28206f83e56083c300 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_27c4d57e375f6a28206f83e56083c300,1);
call add_concept_set_members(@category_e0b79419fa82faea260a57b7609f8df4,@test_27c4d57e375f6a28206f83e56083c300,1);

--  Row 40 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest, 4 views (X-ray)', 'chest, 4 views (x-ray)', 'Numeric', 'Test', true);
set @test_f35f15f7b1cc70d0bfe1ea8cbe3c9a8e = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_f35f15f7b1cc70d0bfe1ea8cbe3c9a8e,1);
call add_concept_set_members(@category_5587e3c8fc4a3d2aa574fabfb8768e56,@test_f35f15f7b1cc70d0bfe1ea8cbe3c9a8e,1);

--  Row 41 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Mandible panorex (X-ray) ', 'mandible panorex (x-ray) ', 'Numeric', 'Test', true);
set @test_41956d3635b4371b3b47295ebbed7915 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_41956d3635b4371b3b47295ebbed7915,1);
call add_concept_set_members(@category_37a3f348e6bd380768394e2de4f57637,@test_41956d3635b4371b3b47295ebbed7915,1);

--  Row 42 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest lordotic (X-ray) ', 'chest lordotic (x-ray) ', 'Numeric', 'Test', true);
set @test_afae6b49e51e010e8bafe5e9bfc7515e = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_afae6b49e51e010e8bafe5e9bfc7515e,1);
call add_concept_set_members(@category_5587e3c8fc4a3d2aa574fabfb8768e56,@test_afae6b49e51e010e8bafe5e9bfc7515e,1);

--  Row 43 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Chest oblique - Bilateral (X-ray) ', 'chest oblique - bilateral (x-ray) ', 'Numeric', 'Test', true);
set @test_cb1d5947c0153ae87e44ababaab8ae39 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_cb1d5947c0153ae87e44ababaab8ae39,1);
call add_concept_set_members(@category_5587e3c8fc4a3d2aa574fabfb8768e56,@test_cb1d5947c0153ae87e44ababaab8ae39,1);

--  Row 44 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Other', 'other', 'N/A', 'ConvSet', true);
set @category_b8622911ec0b5dd60966aeb77a1f705c = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_b8622911ec0b5dd60966aeb77a1f705c,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Kidney retrograde pyelogram (X-ray) ', 'kidney retrograde pyelogram (x-ray) ', 'Numeric', 'Test', true);
set @test_85f5d6066c8a47ca2fb7a4f638c877ff = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_85f5d6066c8a47ca2fb7a4f638c877ff,1);
call add_concept_set_members(@category_b8622911ec0b5dd60966aeb77a1f705c,@test_85f5d6066c8a47ca2fb7a4f638c877ff,1);

--  Row 45 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Acromioclavicular joints - Bilateral (X-ray) ', 'acromioclavicular joints - bilateral (x-ray) ', 'Numeric', 'Test', true);
set @test_8488cf2029551c8f7faffb866cacde9e = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_8488cf2029551c8f7faffb866cacde9e,1);
call add_concept_set_members(@category_98b5524789babb2c1bc39885a9bc97b5,@test_8488cf2029551c8f7faffb866cacde9e,1);

--  Row 46 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Abdomen AP (supine and lateraldecubitus) (X-ray) ', 'abdomen ap (supine and lateraldecubitus) (x-ray) ', 'Numeric', 'Test', true);
set @test_941b1791819cf822a7c546e104326f1d = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_941b1791819cf822a7c546e104326f1d,1);
call add_concept_set_members(@category_496256e5f5ac7f48a629cfb8265faf18,@test_941b1791819cf822a7c546e104326f1d,1);

--  Row 47 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ankle - Left, 3 views (X-ray)', 'ankle - left, 3 views (x-ray)', 'Numeric', 'Test', true);
set @test_b4be7d433b5833949d80e4c34bc45aa9 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_b4be7d433b5833949d80e4c34bc45aa9,1);
call add_concept_set_members(@category_59130f6db52a3b28ab79f5cc48b8a523,@test_b4be7d433b5833949d80e4c34bc45aa9,1);

--  Row 48 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Ankle - Right, 3 views (X-ray)', 'ankle - right, 3 views (x-ray)', 'Numeric', 'Test', true);
set @test_610cec230be07e8e00f0b238576eae09 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_610cec230be07e8e00f0b238576eae09,1);
call add_concept_set_members(@category_59130f6db52a3b28ab79f5cc48b8a523,@test_610cec230be07e8e00f0b238576eae09,1);

--  Row 49 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Neck', 'neck', 'N/A', 'ConvSet', true);
set @category_1448d7bfdcd588f3cf046ba04dcbdee5 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_1448d7bfdcd588f3cf046ba04dcbdee5,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Neck soft tissue (X-ray)', 'neck soft tissue (x-ray)', 'Numeric', 'Test', true);
set @test_7f04754d27c09c4b25deb05d86915e40 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_7f04754d27c09c4b25deb05d86915e40,1);
call add_concept_set_members(@category_1448d7bfdcd588f3cf046ba04dcbdee5,@test_7f04754d27c09c4b25deb05d86915e40,1);

--  Row 50 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Temporomandibular joint, bilateral (XRay)', 'temporomandibular joint, bilateral (xray)', 'Numeric', 'Test', true);
set @test_17e956e9e254598e1559b0c6876b3af5 = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_17e956e9e254598e1559b0c6876b3af5,1);
call add_concept_set_members(@category_37a3f348e6bd380768394e2de4f57637,@test_17e956e9e254598e1559b0c6876b3af5,1);

--  Row 51 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Skull, 2 views (X-ray)', 'skull, 2 views (x-ray)', 'Numeric', 'Test', true);
set @test_5f3a0423d771a18c800b74fc5d2e217d = @concept_id;
call add_concept_set_members(@investigation_fd2818395111bf80fc057f47ad9c7eed,@test_5f3a0423d771a18c800b74fc5d2e217d,1);
call add_concept_set_members(@category_e0b79419fa82faea260a57b7609f8df4,@test_5f3a0423d771a18c800b74fc5d2e217d,1);

--  Row 52 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Endoscopy', 'endoscopy', 'N/A', 'ConvSet', true);
set @investigation_ad376ead11d3a60bee9c42cf74384acf = @concept_id;
call add_concept_set_members(@other_investigations_concept_id,@investigation_ad376ead11d3a60bee9c42cf74384acf,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Advanced Procedure', 'advanced procedure', 'N/A', 'ConvSet', true);
set @category_690c4ff6198e7b77232c3c96075cb6d1 = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_690c4ff6198e7b77232c3c96075cb6d1,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Anoscopy', 'anoscopy', 'Numeric', 'Test', true);
set @test_ad46e6c3bd13f28566cea4c87ff665a1 = @concept_id;
call add_concept_set_members(@investigation_ad376ead11d3a60bee9c42cf74384acf,@test_ad46e6c3bd13f28566cea4c87ff665a1,1);
call add_concept_set_members(@category_690c4ff6198e7b77232c3c96075cb6d1,@test_ad46e6c3bd13f28566cea4c87ff665a1,1);

--  Row 53 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Bronchoscopy', 'bronchoscopy', 'Numeric', 'Test', true);
set @test_f8df0669c56ceebf589b86f1e01e663f = @concept_id;
call add_concept_set_members(@investigation_ad376ead11d3a60bee9c42cf74384acf,@test_f8df0669c56ceebf589b86f1e01e663f,1);
call add_concept_set_members(@category_690c4ff6198e7b77232c3c96075cb6d1,@test_f8df0669c56ceebf589b86f1e01e663f,1);

--  Row 54 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Colonoscopy', 'colonoscopy', 'Numeric', 'Test', true);
set @test_73d410b547f144290cf597adcd62265d = @concept_id;
call add_concept_set_members(@investigation_ad376ead11d3a60bee9c42cf74384acf,@test_73d410b547f144290cf597adcd62265d,1);
call add_concept_set_members(@category_690c4ff6198e7b77232c3c96075cb6d1,@test_73d410b547f144290cf597adcd62265d,1);

--  Row 55 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Cystoscopy', 'cystoscopy', 'Numeric', 'Test', true);
set @test_0d682f30e6314f635617bbea4dae9585 = @concept_id;
call add_concept_set_members(@investigation_ad376ead11d3a60bee9c42cf74384acf,@test_0d682f30e6314f635617bbea4dae9585,1);
call add_concept_set_members(@category_690c4ff6198e7b77232c3c96075cb6d1,@test_0d682f30e6314f635617bbea4dae9585,1);

--  Row 56 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Normal Procedure', 'normal procedure', 'N/A', 'ConvSet', true);
set @category_f24baeb99f705b899649805124e3aa8f = @concept_id;
call add_concept_set_members(@other_investigations_categories_concept_id,@category_f24baeb99f705b899649805124e3aa8f,1);
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Esophagogastroduodenoscopy (EGD)', 'esophagogastroduodenoscopy (egd)', 'Numeric', 'Test', true);
set @test_5d5b0403169735a5bfc6a5031e36b2a1 = @concept_id;
call add_concept_set_members(@investigation_ad376ead11d3a60bee9c42cf74384acf,@test_5d5b0403169735a5bfc6a5031e36b2a1,1);
call add_concept_set_members(@category_f24baeb99f705b899649805124e3aa8f,@test_5d5b0403169735a5bfc6a5031e36b2a1,1);

--  Row 57 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Enteroscopy', 'enteroscopy', 'Numeric', 'Test', true);
set @test_40242ab97b7e8404e02586222b31a869 = @concept_id;
call add_concept_set_members(@investigation_ad376ead11d3a60bee9c42cf74384acf,@test_40242ab97b7e8404e02586222b31a869,1);
call add_concept_set_members(@category_f24baeb99f705b899649805124e3aa8f,@test_40242ab97b7e8404e02586222b31a869,1);

--  Row 58 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Endoscopic retrograde cholangiopancreatography (ERCP)', 'endoscopic retrograde cholangiopancreatography (ercp)', 'Numeric', 'Test', true);
set @test_885379f0a22ddb94af0444c5515c7acd = @concept_id;
call add_concept_set_members(@investigation_ad376ead11d3a60bee9c42cf74384acf,@test_885379f0a22ddb94af0444c5515c7acd,1);
call add_concept_set_members(@category_f24baeb99f705b899649805124e3aa8f,@test_885379f0a22ddb94af0444c5515c7acd,1);

--  Row 59 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Laparoscopy', 'laparoscopy', 'Numeric', 'Test', true);
set @test_42ebb67d9948d3c8015ef3f40720a7d3 = @concept_id;
call add_concept_set_members(@investigation_ad376ead11d3a60bee9c42cf74384acf,@test_42ebb67d9948d3c8015ef3f40720a7d3,1);
call add_concept_set_members(@category_f24baeb99f705b899649805124e3aa8f,@test_42ebb67d9948d3c8015ef3f40720a7d3,1);

--  Row 60 
call add_concept(@concept_id, @concept_name_short_id, @concept_name_full_id, 'Sigmoidoscopy', 'sigmoidoscopy', 'Numeric', 'Test', true);
set @test_c777d7a7799507e816f22bf394e6cefe = @concept_id;
call add_concept_set_members(@investigation_ad376ead11d3a60bee9c42cf74384acf,@test_c777d7a7799507e816f22bf394e6cefe,1);
call add_concept_set_members(@category_f24baeb99f705b899649805124e3aa8f,@test_c777d7a7799507e816f22bf394e6cefe,1);


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