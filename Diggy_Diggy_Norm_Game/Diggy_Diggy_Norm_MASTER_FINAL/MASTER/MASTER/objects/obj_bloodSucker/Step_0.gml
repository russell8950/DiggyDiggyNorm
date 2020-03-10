/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0322B465
/// @DnDArgument : "obj" "obj_norm"
/// @DnDSaveInfo : "obj" "06823aed-4616-4c26-8e76-20f5a26795e1"
var l0322B465_0 = false;
l0322B465_0 = instance_exists(obj_norm);
if(l0322B465_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E81ABBB
	/// @DnDParent : 0322B465
	/// @DnDArgument : "var" "distance_to_object(obj_norm)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "200"
	if(distance_to_object(obj_norm) <= 200)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 1FA05BB0
		/// @DnDParent : 0E81ABBB
		/// @DnDArgument : "x" "obj_norm.x"
		/// @DnDArgument : "y" "obj_norm.y"
		direction = point_direction(x, y, obj_norm.x, obj_norm.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 6028E73F
		/// @DnDParent : 0E81ABBB
		/// @DnDArgument : "speed" "2"
		speed = 2;
	}
}

/// @DnDAction : YoYo Games.Instance Variables.Get_Health
/// @DnDVersion : 1
/// @DnDHash : 4809B5A8
/// @DnDArgument : "var" "curr_health"
/// @DnDArgument : "var_temp" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var curr_health = __dnd_health;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 672A3B6D
/// @DnDArgument : "var" "curr_health"
/// @DnDArgument : "op" "3"
if(curr_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 77C73EA4
	/// @DnDParent : 672A3B6D
	instance_destroy();
}