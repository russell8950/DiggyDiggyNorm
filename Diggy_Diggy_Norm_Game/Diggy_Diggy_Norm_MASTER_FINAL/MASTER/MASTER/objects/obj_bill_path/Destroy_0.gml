/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 1C91AF81
/// @DnDApplyTo : 312e01e4-18e2-4040-8f50-f8bfca631bc3
/// @DnDArgument : "score" "-1"
/// @DnDArgument : "score_relative" "1"
with(obj_norm_controller) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(-1);
}