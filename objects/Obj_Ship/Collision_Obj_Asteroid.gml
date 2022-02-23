/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 36F1B62E
/// @DnDArgument : "soundid" "snd_die"
/// @DnDSaveInfo : "soundid" "snd_die"
audio_play_sound(snd_die, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 76A17397
/// @DnDApplyTo : {Obj_Game}
with(Obj_Game) {
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3BAEFB3C
	/// @DnDParent : 76A17397
	/// @DnDArgument : "steps" "60"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 60);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 77EF8541
/// @DnDApplyTo : {Obj_Game}
with(Obj_Game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 2D0E8B2E
	/// @DnDParent : 77EF8541
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5FA789A9
instance_destroy();

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 1D2736C4
/// @DnDArgument : "times" "30"
repeat(30)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0C781B47
	/// @DnDParent : 1D2736C4
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Obj_Ship_Debris"
	/// @DnDSaveInfo : "objectid" "Obj_Ship_Debris"
	instance_create_layer(x + 0, y + 0, "Instances", Obj_Ship_Debris);
}