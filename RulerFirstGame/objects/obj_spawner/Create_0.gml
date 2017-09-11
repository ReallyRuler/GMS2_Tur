/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 68FF6FAB
/// @DnDArgument : "expr" "60"
/// @DnDArgument : "var" "colddown"
colddown = 60;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 498BE0E0
/// @DnDArgument : "steps" "colddown"
alarm_set(0, colddown);