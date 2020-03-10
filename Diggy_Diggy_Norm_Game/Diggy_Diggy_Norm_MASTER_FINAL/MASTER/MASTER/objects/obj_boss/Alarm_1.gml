/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4CCC1C66
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_bill"
/// @DnDArgument : "layer" ""Instances_2""
/// @DnDSaveInfo : "objectid" "cf998273-17b2-4f8c-b838-aff74a7502b4"
instance_create_layer(x + 0, y + 0, "Instances_2", obj_bill);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 797125A1
/// @DnDArgument : "steps" "15"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 15);