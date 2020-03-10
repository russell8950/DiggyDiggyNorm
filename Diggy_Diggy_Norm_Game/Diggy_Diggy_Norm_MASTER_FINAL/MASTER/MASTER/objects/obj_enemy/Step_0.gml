/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5B8A0061
/// @DnDDisabled : 1
/// @DnDArgument : "code" "if(obj_norm.y < y && obj_norm.x < bbox_right && obj_norm.x > bbox_left)$(13_10){$(13_10)	positionRelative = positions.north;$(13_10)}$(13_10)else if(obj_norm.y > y && obj_norm.x < bbox_right && obj_norm.x > bbox_left)$(13_10){$(13_10)	positionRelative = positions.south;$(13_10)}$(13_10)else if(obj_norm.x > bbox_right && obj_norm.y < bbox_bottom && obj_norm.y > bbox_top)$(13_10){$(13_10)	positionRelative = positions.east;$(13_10)}$(13_10)else if(obj_norm.x < bbox_left && obj_norm.y < bbox_bottom && obj_norm.y > bbox_top)$(13_10){$(13_10)	positionRelative = positions.west;$(13_10)}$(13_10)else if (obj_norm.x > x && obj_norm.y < y)$(13_10){$(13_10)	positionRelative = positions.northEast;$(13_10)}$(13_10)else if (obj_norm.x < x && obj_norm.y < y) $(13_10){$(13_10)	positionRelative = positions.northWest;$(13_10)}$(13_10)else if (obj_norm.x > x && obj_norm.y > y) $(13_10){$(13_10)	positionRelative = positions.southEast;$(13_10)}$(13_10)else $(13_10){$(13_10)	positionRelative = positions.southWest;$(13_10)}"


/// @DnDAction : YoYo Games.Instance Variables.Get_Health
/// @DnDVersion : 1
/// @DnDHash : 0F91855B
/// @DnDArgument : "var" "curr_health"
/// @DnDArgument : "var_temp" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var curr_health = __dnd_health;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F546297
/// @DnDArgument : "var" "curr_health"
/// @DnDArgument : "op" "3"
if(curr_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4BAE297D
	/// @DnDParent : 3F546297
	instance_destroy();
}