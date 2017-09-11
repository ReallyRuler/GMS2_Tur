/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 138B68AA
/// @DnDArgument : "obj" "obj_enemy"
/// @DnDSaveInfo : "obj" "782b0d84-a462-4270-9f9e-0f1f9b68030c"
var l138B68AA_0 = false;
l138B68AA_0 = instance_exists(obj_enemy);
if(l138B68AA_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 35BE1737
	/// @DnDParent : 138B68AA
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 008B8D83
	/// @DnDParent : 138B68AA
	/// @DnDArgument : "speed" "spd"
	speed = spd;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 588BB758
	/// @DnDParent : 138B68AA
	/// @DnDArgument : "angle" "direction"
	image_angle = direction;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F8B03C9
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6213CA5F
	/// @DnDApplyTo : 1e77c46c-6ae7-40ac-b960-d5bc9a67e4e2
	/// @DnDParent : 0F8B03C9
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "thescore"
	with(obj_score) {
	thescore += 1;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 5B3DA51E
	/// @DnDParent : 0F8B03C9
	/// @DnDArgument : "sound" "sou_death"
	/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
	/// @DnDSaveInfo : "sound" "25759a54-95ce-4439-b7e3-ea6c643a8542"
	audio_sound_pitch(sou_death, random_range(0.8,1.2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2D2345EA
	/// @DnDParent : 0F8B03C9
	/// @DnDArgument : "soundid" "sou_death"
	/// @DnDSaveInfo : "soundid" "25759a54-95ce-4439-b7e3-ea6c643a8542"
	audio_play_sound(sou_death, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 24542CD5
	/// @DnDParent : 0F8B03C9
	instance_destroy();
}