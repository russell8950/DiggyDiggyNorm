/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 79BA41B5
/// @DnDArgument : "health" "1"

__dnd_health = real(1);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1AB99FB0
/// @DnDArgument : "var" "invinc"
invinc = 0;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6B15261A
/// @DnDArgument : "obj" "obj_norm"
/// @DnDSaveInfo : "obj" "06823aed-4616-4c26-8e76-20f5a26795e1"
var l6B15261A_0 = false;
l6B15261A_0 = instance_exists(obj_norm);
if(l6B15261A_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 2D6E7EE6
	/// @DnDParent : 6B15261A
	/// @DnDArgument : "x" "obj_norm.x"
	/// @DnDArgument : "y" "obj_norm.y"
	direction = point_direction(x, y, obj_norm.x, obj_norm.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3C9C2BEA
	/// @DnDParent : 6B15261A
	/// @DnDArgument : "speed" "10"
	speed = 10;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 02294E62
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 43DD2738
	/// @DnDParent : 02294E62
	instance_destroy();
}