/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1329FA07
/// @DnDArgument : "var" "vc"
/// @DnDArgument : "value" "view_camera[0]"
var vc = view_camera[0];

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0936E4EC
/// @DnDArgument : "var" "vx"
/// @DnDArgument : "value" "camera_get_view_x(vc)"
var vx = camera_get_view_x(vc);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 4BA48E43
/// @DnDArgument : "var" "vy"
/// @DnDArgument : "value" "camera_get_view_y(vc)"
var vy = camera_get_view_y(vc);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0D0BD10C
/// @DnDArgument : "var" "vw"
/// @DnDArgument : "value" "camera_get_view_width(vc)"
var vw = camera_get_view_width(vc);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 4929BB0F
/// @DnDArgument : "font" "font_score"
/// @DnDSaveInfo : "font" "a8d9144f-925a-4cca-816b-6276e0fba3d4"
draw_set_font(font_score);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 072F3A14
/// @DnDArgument : "color" "$FF59FFC7"
draw_set_colour($FF59FFC7 & $ffffff);
draw_set_alpha(($FF59FFC7 >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 361ACE29
/// @DnDArgument : "x" "vx+(vw/2)"
/// @DnDArgument : "y" "vy+25"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "thescore"
draw_text(vx+(vw/2), vy+25, string("") + string(thescore));