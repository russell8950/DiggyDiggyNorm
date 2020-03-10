/// @DnDAction : YoYo Games.Timelines.Set_Timeline
/// @DnDVersion : 1
/// @DnDHash : 0F032668
/// @DnDArgument : "timeline" "tml_events"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "timeline" "0beabae6-5bec-4996-826f-6bb093fbef3c"
timeline_index = tml_events;
timeline_loop = 1;
timeline_running = 1;

/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 60A04B8D
/// @DnDArgument : "var" "room_temp"
/// @DnDArgument : "var_temp" "1"
var room_temp = room;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1EA90C35
/// @DnDArgument : "var" "room_temp"
/// @DnDArgument : "value" "room_desert"
if(room_temp == room_desert)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 269DB81B
	/// @DnDParent : 1EA90C35
	/// @DnDArgument : "soundid" "snd_explore"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "soundid" "43747a07-73bd-4cce-9cab-08c16f5c63fa"
	var l269DB81B_0 = snd_explore;
	if (!audio_is_playing(l269DB81B_0))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 5C5DEA7F
		/// @DnDParent : 269DB81B
		/// @DnDArgument : "soundid" "snd_desert"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "46b22355-211d-4a9a-a196-ce3629343dbd"
		audio_play_sound(snd_desert, 0, 1);
	}
}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2FEFF14D
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "norm_defeated"
global.norm_defeated = false;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 222FF5EF
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "defeated"
global.defeated = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 43287683
/// @DnDArgument : "var" "extra"
extra = 0;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 7121CE3C
/// @DnDArgument : "health" "99"

__dnd_health = real(99);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 7FD024D6
/// @DnDArgument : "score" "5"

__dnd_score = real(5);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2CEB64BC
/// @DnDArgument : "code" "enum Movement {$(13_10)	idle,$(13_10)	up,$(13_10)	down,$(13_10)	left,$(13_10)	right,$(13_10)	diagUpRight,$(13_10)	diagUpLeft,$(13_10)	diagDownRight,$(13_10)	diagDownLeft$(13_10)}$(13_10)$(13_10)enum Actions {$(13_10)	none,$(13_10)	attack$(13_10)}$(13_10)$(13_10)"
enum Movement {
	idle,
	up,
	down,
	left,
	right,
	diagUpRight,
	diagUpLeft,
	diagDownRight,
	diagDownLeft
}

enum Actions {
	none,
	attack
}