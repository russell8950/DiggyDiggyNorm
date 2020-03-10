/// @DnDAction : YoYo Games.Rooms.If_First_Room
/// @DnDVersion : 1
/// @DnDHash : 30587042
if(room == room_first)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 0A4015CE
	/// @DnDParent : 30587042
	/// @DnDArgument : "room" "room_cave"
	/// @DnDSaveInfo : "room" "586e7f94-44b3-434a-a3b8-6039e1d5850e"
	room_goto(room_cave);

	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 08D692F7
	/// @DnDParent : 30587042
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7F600B45
	/// @DnDParent : 30587042
	/// @DnDArgument : "soundid" "snd_explore"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "43747a07-73bd-4cce-9cab-08c16f5c63fa"
	audio_play_sound(snd_explore, 0, 1);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4489A5C9
else
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 50BDECCD
	/// @DnDParent : 4489A5C9
	/// @DnDArgument : "room" "room_boss"
	/// @DnDSaveInfo : "room" "9d212599-be1e-45a1-b25f-1f297f475173"
	room_goto(room_boss);

	/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5562FFA7
	/// @DnDParent : 4489A5C9
	audio_stop_all();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3758F810
	/// @DnDParent : 4489A5C9
	/// @DnDArgument : "soundid" "snd_boss"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "3ebe7aca-1894-495a-b819-1e73eb0eb8f0"
	audio_play_sound(snd_boss, 0, 1);
}