/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4E98FD82
/// @DnDArgument : "speed" "random_range(-10,10)"
/// @DnDArgument : "type" "1"
hspeed = random_range(-10,10);

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 6FD3C070
/// @DnDArgument : "health" "10"

__dnd_health = real(10);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1AC9CA13
/// @DnDArgument : "var" "invinc"
invinc = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2F772A09
/// @DnDArgument : "expr" "positions.east"
/// @DnDArgument : "var" "positionRelative"
positionRelative = positions.east;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5F9F6DEE
/// @DnDArgument : "steps" "15"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 15);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 21C75C5B
/// @DnDArgument : "steps" "10"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 10);