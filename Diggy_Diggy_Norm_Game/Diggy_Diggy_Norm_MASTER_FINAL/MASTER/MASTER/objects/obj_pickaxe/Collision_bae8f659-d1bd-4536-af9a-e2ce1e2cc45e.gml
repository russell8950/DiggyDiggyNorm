/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 26E4B974
/// @DnDApplyTo : other
/// @DnDArgument : "var" "invinc"
with(other) var l26E4B974_0 = invinc == 0;
if(l26E4B974_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B6DCA4B
	/// @DnDApplyTo : other
	/// @DnDParent : 26E4B974
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "invinc"
	with(other) {
	invinc = 1;
	
	}

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 72EAFEED
	/// @DnDApplyTo : other
	/// @DnDParent : 26E4B974
	/// @DnDArgument : "health" "-1"
	/// @DnDArgument : "health_relative" "1"
	with(other) {
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-1);
	}

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 309B2FCA
	/// @DnDApplyTo : other
	/// @DnDParent : 26E4B974
	/// @DnDArgument : "speed" "11"
	/// @DnDArgument : "speed_relative" "1"
	with(other) image_speed += 11;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 02AC80EB
	/// @DnDApplyTo : other
	/// @DnDParent : 26E4B974
	/// @DnDArgument : "steps" "50"
	with(other) {
	alarm_set(0, 50);
	
	}
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 354E559E
/// @DnDArgument : "soundid" "snd_knock"
/// @DnDSaveInfo : "soundid" "076daf44-f442-46b8-820d-df20ed191b89"
audio_play_sound(snd_knock, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6FAE6451
instance_destroy();