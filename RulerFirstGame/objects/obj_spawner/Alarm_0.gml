/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4C4ABF61
/// @DnDArgument : "var" "xx"
/// @DnDArgument : "max" "room_width"
xx = (random_range(0, room_width));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2606375D
/// @DnDArgument : "var" "yy"
/// @DnDArgument : "max" "room_height"
yy = (random_range(0, room_height));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0AE0D705
/// @DnDArgument : "xpos" "xx"
/// @DnDArgument : "ypos" "yy"
/// @DnDArgument : "objectid" "obj_enemyspawn"
/// @DnDArgument : "layer" ""enemylayer""
/// @DnDSaveInfo : "objectid" "9b64c28b-9b5d-4939-8b36-e8e97693140a"
instance_create_layer(xx, yy, "enemylayer", obj_enemyspawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 23BF9B84
/// @DnDArgument : "steps" "colddown"
alarm_set(0, colddown);