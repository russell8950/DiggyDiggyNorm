/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6B1B8C2C
/// @DnDArgument : "var" "global.norm_defeated or global.defeated"
/// @DnDArgument : "value" "true"
if(global.norm_defeated or global.defeated == true)
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 7AB7E01E
	/// @DnDParent : 6B1B8C2C
	game_restart();
}