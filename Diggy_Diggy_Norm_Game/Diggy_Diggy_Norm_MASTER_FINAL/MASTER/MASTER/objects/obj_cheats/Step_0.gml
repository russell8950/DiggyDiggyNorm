/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0A62EB3F
/// @DnDArgument : "code" "if (keyboard_check(vk_control)) {$(13_10)	if (keyboard_check(ord("D"))) {$(13_10)		obj_norm_controller.__dnd_score = 0;$(13_10)	}$(13_10)	if (keyboard_check(ord("R"))) {$(13_10)		game_restart();$(13_10)	}$(13_10)	if (keyboard_check(ord("B"))) {$(13_10)		 room_goto(room_boss);$(13_10)		 audio_pause_all();$(13_10)		 audio_play_sound(snd_boss,10,true);$(13_10)	}$(13_10)	if (keyboard_check(ord("H"))) {$(13_10)		 obj_norm_controller.__dnd_health = 99;$(13_10)	}$(13_10)	// button skeleton - fill in ord key.$(13_10)	//if (keyboard_check(ord(""))) {$(13_10)		 $(13_10)	//}$(13_10)}"
if (keyboard_check(vk_control)) {
	if (keyboard_check(ord("D"))) {
		obj_norm_controller.__dnd_score = 0;
	}
	if (keyboard_check(ord("R"))) {
		game_restart();
	}
	if (keyboard_check(ord("B"))) {
		 room_goto(room_boss);
		 audio_pause_all();
		 audio_play_sound(snd_boss,10,true);
	}
	if (keyboard_check(ord("H"))) {
		 obj_norm_controller.__dnd_health = 99;
	}
	// button skeleton - fill in ord key.
	//if (keyboard_check(ord(""))) {
		 
	//}
}