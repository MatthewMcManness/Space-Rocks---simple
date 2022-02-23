/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 49B106C4
/// @DnDArgument : "soundid" "snd_hurt"
/// @DnDSaveInfo : "soundid" "snd_hurt"
audio_play_sound(snd_hurt, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 5D492F59
/// @DnDApplyTo : {Obj_Game}
with(Obj_Game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 1657211D
	/// @DnDParent : 5D492F59
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1CAC806C
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 4B592497
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0E928B96
	/// @DnDParent : 4B592497
	instance_destroy();

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 3A09A898
	/// @DnDParent : 4B592497
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 297B8F85
		/// @DnDParent : 3A09A898
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "Obj_Debris"
		/// @DnDSaveInfo : "objectid" "Obj_Debris"
		instance_create_layer(x + 0, y + 0, "Instances", Obj_Debris);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 003463F8
	/// @DnDParent : 4B592497
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "SPR_asteroid_Large"
	if(sprite_index == SPR_asteroid_Large)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 2AD88165
		/// @DnDParent : 003463F8
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3043F1DD
			/// @DnDParent : 2AD88165
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "Obj_Asteroid"
			/// @DnDSaveInfo : "objectid" "Obj_Asteroid"
			var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", Obj_Asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 46D0D5BE
			/// @DnDParent : 2AD88165
			/// @DnDArgument : "expr" "SPR_asteroid_medium"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = SPR_asteroid_medium;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3965C801
	/// @DnDParent : 4B592497
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "SPR_asteroid_medium"
	if(sprite_index == SPR_asteroid_medium)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 6FF03B50
		/// @DnDParent : 3965C801
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1876F10F
			/// @DnDParent : 6FF03B50
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "Obj_Asteroid"
			/// @DnDSaveInfo : "objectid" "Obj_Asteroid"
			var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", Obj_Asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7C66D49D
			/// @DnDParent : 6FF03B50
			/// @DnDArgument : "expr" "SPR_asteroid_small"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = SPR_asteroid_small;
		}
	}
}