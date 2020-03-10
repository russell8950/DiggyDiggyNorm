/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4D2E7036
/// @DnDArgument : "value" "true"
/// @DnDArgument : "var" "defeated"
global.defeated = true;

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 22BCB2B4
/// @DnDApplyTo : 312e01e4-18e2-4040-8f50-f8bfca631bc3
with(obj_norm_controller) {

__dnd_score = real(0);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 68439707
/// @DnDApplyTo : cf998273-17b2-4f8c-b838-aff74a7502b4
with(obj_bill) instance_destroy();