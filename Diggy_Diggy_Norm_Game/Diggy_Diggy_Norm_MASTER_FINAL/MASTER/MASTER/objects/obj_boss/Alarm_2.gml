/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 04DF9D8D
/// @DnDArgument : "speed" "random_range(-10,10)"
/// @DnDArgument : "type" "1"
hspeed = random_range(-10,10);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 19FB3A34
/// @DnDArgument : "steps" "10"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 10);