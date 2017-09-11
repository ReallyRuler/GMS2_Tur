/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 018DCE57
/// @DnDArgument : "var" "dir"
/// @DnDArgument : "value" "point_direction(x,y,mouse_x,mouse_y)"
var dir = point_direction(x,y,mouse_x,mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 4745F3F2
/// @DnDArgument : "angle" "dir"
image_angle = dir;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 75607411
/// @DnDArgument : "key" "vk_left"
var l75607411_0;
l75607411_0 = keyboard_check(vk_left);
if (l75607411_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2233BA54
	/// @DnDParent : 75607411
	/// @DnDArgument : "expr" "x-4"
	/// @DnDArgument : "var" "x"
	x = x-4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 53788B0F
/// @DnDArgument : "key" "vk_right"
var l53788B0F_0;
l53788B0F_0 = keyboard_check(vk_right);
if (l53788B0F_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09A182F8
	/// @DnDParent : 53788B0F
	/// @DnDArgument : "expr" "x+4"
	/// @DnDArgument : "var" "x"
	x = x+4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 280AFCE6
/// @DnDArgument : "key" "vk_up"
var l280AFCE6_0;
l280AFCE6_0 = keyboard_check(vk_up);
if (l280AFCE6_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C7EE81A
	/// @DnDParent : 280AFCE6
	/// @DnDArgument : "expr" "y-4"
	/// @DnDArgument : "var" "y"
	y = y-4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 3F7611D0
/// @DnDArgument : "key" "vk_down"
var l3F7611D0_0;
l3F7611D0_0 = keyboard_check(vk_down);
if (l3F7611D0_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39E98119
	/// @DnDParent : 3F7611D0
	/// @DnDArgument : "expr" "y+4"
	/// @DnDArgument : "var" "y"
	y = y+4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 10B466C3
var l10B466C3_0;
l10B466C3_0 = mouse_check_button(mb_left);
if (l10B466C3_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0AAB03DD
	/// @DnDParent : 10B466C3
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(cooldown < 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 00CADE7C
		/// @DnDParent : 0AAB03DD
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDArgument : "layer" ""bulletlayer""
		/// @DnDSaveInfo : "objectid" "6bc59ef2-da40-4ee0-9c50-8ac7788053bb"
		instance_create_layer(x, y, "bulletlayer", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7668DF81
		/// @DnDParent : 0AAB03DD
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 3;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 15688A80
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;