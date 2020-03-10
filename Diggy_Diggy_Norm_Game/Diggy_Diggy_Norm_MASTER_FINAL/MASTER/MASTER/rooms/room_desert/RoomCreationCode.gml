/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 057C1DF1
/// @DnDArgument : "xpos" "318"
/// @DnDArgument : "ypos" "900"
/// @DnDArgument : "objectid" "obj_bill_path"
/// @DnDSaveInfo : "objectid" "f6e11ac3-65d2-4c14-bbd9-140e0f3fe37a"
instance_create_layer(318, 900, "Instances", obj_bill_path);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6047CCCA
/// @DnDArgument : "xpos" "2373"
/// @DnDArgument : "ypos" "1256"
/// @DnDArgument : "objectid" "obj_bill_path"
/// @DnDSaveInfo : "objectid" "f6e11ac3-65d2-4c14-bbd9-140e0f3fe37a"
instance_create_layer(2373, 1256, "Instances", obj_bill_path);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7FE2214A
/// @DnDArgument : "xpos" "1292"
/// @DnDArgument : "ypos" "172"
/// @DnDArgument : "objectid" "obj_bill_path"
/// @DnDSaveInfo : "objectid" "f6e11ac3-65d2-4c14-bbd9-140e0f3fe37a"
instance_create_layer(1292, 172, "Instances", obj_bill_path);

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 0B5291C1
/// @DnDApplyTo : f6e11ac3-65d2-4c14-bbd9-140e0f3fe37a
/// @DnDArgument : "path" "pth_bill"
/// @DnDArgument : "speed" "4"
/// @DnDArgument : "atend" "path_action_restart"
/// @DnDSaveInfo : "path" "a08758a5-2748-434c-b7fd-67e186cccb23"
with(obj_bill_path) path_start(pth_bill, 4, path_action_restart, false);