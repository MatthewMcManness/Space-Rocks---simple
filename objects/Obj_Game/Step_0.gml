/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 14423A17
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 7AE3ABA4
	/// @DnDParent : 14423A17
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 6E928FC6
		/// @DnDParent : 7AE3ABA4
		/// @DnDArgument : "soundid" "snd_win"
		/// @DnDSaveInfo : "soundid" "snd_win"
		audio_play_sound(snd_win, 0, 0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 2461F18F
		/// @DnDParent : 7AE3ABA4
		/// @DnDArgument : "room" "rm_Win"
		/// @DnDSaveInfo : "room" "rm_Win"
		room_goto(rm_Win);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 4CA85FAB
	/// @DnDParent : 14423A17
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 1ECD1EDB
		/// @DnDParent : 4CA85FAB
		/// @DnDArgument : "soundid" "snd_lose"
		/// @DnDSaveInfo : "soundid" "snd_lose"
		audio_play_sound(snd_lose, 0, 0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 4B66B45B
		/// @DnDParent : 4CA85FAB
		/// @DnDArgument : "room" "rm_gameOver"
		/// @DnDSaveInfo : "room" "rm_gameOver"
		room_goto(rm_gameOver);
	}
}