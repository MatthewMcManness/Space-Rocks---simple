/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 21F170FE
/// @DnDArgument : "soundid" "snd_zap"
/// @DnDSaveInfo : "soundid" "snd_zap"
audio_play_sound(snd_zap, 0, 0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 75C88659
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "newBullet"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "Obj_Bullet"
/// @DnDSaveInfo : "objectid" "Obj_Bullet"
var newBullet = instance_create_layer(x + 0, y + 0, "Instances", Obj_Bullet);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0E097410
/// @DnDArgument : "expr" "image_angle"
/// @DnDArgument : "var" "newBullet.direction"
newBullet.direction = image_angle;