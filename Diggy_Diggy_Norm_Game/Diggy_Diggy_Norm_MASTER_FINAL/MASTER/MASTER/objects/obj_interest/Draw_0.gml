/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 63B4ADEE
/// @DnDArgument : "var" "global.defeated"
/// @DnDArgument : "value" "false"
if(global.defeated == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6D63E815
	/// @DnDParent : 63B4ADEE
	/// @DnDArgument : "code" "draw_text(x,y,text);"
	draw_text(x,y,text);
}