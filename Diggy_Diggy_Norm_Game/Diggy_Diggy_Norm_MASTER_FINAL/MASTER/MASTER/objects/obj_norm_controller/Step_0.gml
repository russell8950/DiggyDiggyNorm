/// @DnDAction : YoYo Games.Instance Variables.Get_Health
/// @DnDVersion : 1
/// @DnDHash : 595EACD0
/// @DnDArgument : "var" "curr_health"
/// @DnDArgument : "var_temp" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var curr_health = __dnd_health;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4F3B0032
/// @DnDArgument : "var" "curr_health"
if(curr_health == 0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 7246B440
	/// @DnDParent : 4F3B0032
	/// @DnDArgument : "score" "20"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(20);

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 7AC504D9
	/// @DnDParent : 4F3B0032
	/// @DnDArgument : "health" "99"
	
	__dnd_health = real(99);

	/// @DnDAction : YoYo Games.Movement.Jump_To_Start
	/// @DnDVersion : 1
	/// @DnDHash : 052B4D25
	/// @DnDApplyTo : 06823aed-4616-4c26-8e76-20f5a26795e1
	/// @DnDParent : 4F3B0032
	with(obj_norm) {
	x = xstart;
	y = ystart;
	}
}

/// @DnDAction : YoYo Games.Instance Variables.Get_Score
/// @DnDVersion : 1
/// @DnDHash : 23E99A9C
/// @DnDArgument : "var" "curr_debt"
/// @DnDArgument : "var_temp" "1"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
var curr_debt = __dnd_score;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 38627528
/// @DnDArgument : "var" "curr_debt"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "100"
if(curr_debt >= 100)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 53DA1A05
	/// @DnDParent : 38627528
	/// @DnDArgument : "value" "true"
	/// @DnDArgument : "var" "norm_defeated"
	global.norm_defeated = true;

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 75B3FF6A
	/// @DnDParent : 38627528
	/// @DnDArgument : "obj" "obj_norm"
	/// @DnDSaveInfo : "obj" "06823aed-4616-4c26-8e76-20f5a26795e1"
	var l75B3FF6A_0 = false;
	l75B3FF6A_0 = instance_exists(obj_norm);
	if(l75B3FF6A_0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 03902CCD
		/// @DnDApplyTo : 06823aed-4616-4c26-8e76-20f5a26795e1
		/// @DnDParent : 75B3FF6A
		with(obj_norm) instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74F8E948
/// @DnDArgument : "var" "curr_debt"
/// @DnDArgument : "op" "3"
if(curr_debt <= 0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 18D0DA14
	/// @DnDParent : 74F8E948
	
	__dnd_score = real(0);
}