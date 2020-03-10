/// @DnDAction : YoYo Games.Instances.Change_Instance
/// @DnDVersion : 1
/// @DnDHash : 7753D24D
/// @DnDArgument : "objind" "obj_gem"
/// @DnDSaveInfo : "objind" "e123f800-cab7-49ab-8b3d-d553faaf50b0"
instance_change(obj_gem, true);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 31C71C14
/// @DnDArgument : "var" "sound"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
var sound = floor(random_range(0, 1 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 68EA6E6F
/// @DnDArgument : "var" "sound"
if(sound == 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 626EEED2
	/// @DnDParent : 68EA6E6F
	/// @DnDArgument : "soundid" "snd_ting"
	/// @DnDSaveInfo : "soundid" "1a922d8a-0989-44a1-9433-2147d790b441"
	audio_play_sound(snd_ting, 0, 0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 127F29B4
else
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0E4A3DB6
	/// @DnDParent : 127F29B4
	/// @DnDArgument : "soundid" "snd_ting2"
	/// @DnDSaveInfo : "soundid" "ae36d3d3-0adf-4687-bab0-6d03444d6c31"
	audio_play_sound(snd_ting2, 0, 0);
}