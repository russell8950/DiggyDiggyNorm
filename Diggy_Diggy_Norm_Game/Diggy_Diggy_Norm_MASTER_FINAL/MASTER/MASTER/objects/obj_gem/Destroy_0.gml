/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 736EDD94
/// @DnDArgument : "value" "obj_norm_controller.__dnd_score - obj_gem.value"
var temp = obj_norm_controller.__dnd_score - obj_gem.value;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5CCB7474
/// @DnDArgument : "var" "temp"
/// @DnDArgument : "op" "3"
if(temp <= 0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 026E1C75
	/// @DnDApplyTo : 312e01e4-18e2-4040-8f50-f8bfca631bc3
	/// @DnDParent : 5CCB7474
	with(obj_norm_controller) {
	
	__dnd_score = real(0);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 64D50A47
else
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 5017B6DA
	/// @DnDApplyTo : 312e01e4-18e2-4040-8f50-f8bfca631bc3
	/// @DnDParent : 64D50A47
	/// @DnDArgument : "score" "- obj_gem.value"
	/// @DnDArgument : "score_relative" "1"
	with(obj_norm_controller) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(- obj_gem.value);
	}
}