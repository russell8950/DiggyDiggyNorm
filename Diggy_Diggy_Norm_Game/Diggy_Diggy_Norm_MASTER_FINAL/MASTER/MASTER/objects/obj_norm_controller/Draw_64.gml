/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 45BC03AC
/// @DnDArgument : "obj" "obj_norm"
/// @DnDSaveInfo : "obj" "06823aed-4616-4c26-8e76-20f5a26795e1"
var l45BC03AC_0 = false;
l45BC03AC_0 = instance_exists(obj_norm);
if(l45BC03AC_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Get_Health
	/// @DnDVersion : 1
	/// @DnDHash : 09ACEC89
	/// @DnDParent : 45BC03AC
	/// @DnDArgument : "var" "curr_health"
	/// @DnDArgument : "var_temp" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	var curr_health = __dnd_health;

	/// @DnDAction : YoYo Games.Instance Variables.Get_Score
	/// @DnDVersion : 1
	/// @DnDHash : 51EE0D57
	/// @DnDParent : 45BC03AC
	/// @DnDArgument : "var" "debt"
	/// @DnDArgument : "var_temp" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	var debt = __dnd_score;

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 62F0D52E
	/// @DnDParent : 45BC03AC
	/// @DnDArgument : "x" "50"
	/// @DnDArgument : "y" "25"
	/// @DnDArgument : "caption" ""Health: ""
	/// @DnDArgument : "var" "curr_health/33"
	draw_text(50, 25, string("Health: ") + string(curr_health/33));

	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
	/// @DnDVersion : 1
	/// @DnDHash : 24ADD048
	/// @DnDParent : 45BC03AC
	/// @DnDArgument : "x1" "140"
	/// @DnDArgument : "y1" "45"
	/// @DnDArgument : "x2" "239"
	/// @DnDArgument : "y2" "25"
	/// @DnDArgument : "value" "curr_health"
	/// @DnDArgument : "backcol" "$FF000000"
	/// @DnDArgument : "mincol" "$FF0000FF"
	/// @DnDArgument : "maxcol" "$FF00FF00"
	draw_healthbar(140, 45, 239, 25, curr_health, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FF000000>>24) != 0), (($FFFFFFFF>>24) != 0));

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 1DD03FD8
	/// @DnDParent : 45BC03AC
	/// @DnDArgument : "x" "250"
	/// @DnDArgument : "y" "25"
	/// @DnDArgument : "caption" ""Debt: ""
	/// @DnDArgument : "var" "string(__dnd_score) + "K""
	draw_text(250, 25, string("Debt: ") + string(string(__dnd_score) + "K"));

	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
	/// @DnDVersion : 1
	/// @DnDHash : 52EB1D60
	/// @DnDParent : 45BC03AC
	/// @DnDArgument : "x1" "360"
	/// @DnDArgument : "y1" "45"
	/// @DnDArgument : "x2" "460"
	/// @DnDArgument : "y2" "25"
	/// @DnDArgument : "value" "debt"
	/// @DnDArgument : "mincol" "$FF00FF00"
	/// @DnDArgument : "maxcol" "$FF0000FF"
	draw_healthbar(360, 45, 460, 25, debt, $FFFFFFFF & $FFFFFF, $FF00FF00 & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28B1D78E
/// @DnDArgument : "var" "global.norm_defeated"
/// @DnDArgument : "value" "true"
if(global.norm_defeated == true)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 0C4CAD4B
	/// @DnDParent : 28B1D78E
	/// @DnDArgument : "x" "120"
	/// @DnDArgument : "y" "120"
	/// @DnDArgument : "xscale" "1.5"
	/// @DnDArgument : "yscale" "1.5"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" ""You have sucumb to debt. Press R to restart the game!""
	draw_text_transformed(120, 120, "" + string("You have sucumb to debt. Press R to restart the game!"), 1.5, 1.5, 0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B41624E
/// @DnDArgument : "var" "global.defeated"
/// @DnDArgument : "value" "true"
if(global.defeated == true)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1BC246B6
	/// @DnDParent : 5B41624E
	/// @DnDArgument : "x" "100"
	/// @DnDArgument : "y" "room_height/2"
	/// @DnDArgument : "xscale" "1.5"
	/// @DnDArgument : "yscale" "1.5"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" ""You have defeated the debt boss! Press R to restart the game.""
	draw_text_transformed(100, room_height/2, "" + string("You have defeated the debt boss! Press R to restart the game."), 1.5, 1.5, 0);
}