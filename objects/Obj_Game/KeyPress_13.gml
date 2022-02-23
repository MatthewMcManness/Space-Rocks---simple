/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 7229AE22
/// @DnDArgument : "expr" "room"
var l7229AE22_0 = room;
switch(l7229AE22_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2938F532
	/// @DnDParent : 7229AE22
	/// @DnDArgument : "const" "rm_Win"
	case rm_Win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 3D760A0F
		/// @DnDParent : 2938F532
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4C93478A
	/// @DnDParent : 7229AE22
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 174A08B8
		/// @DnDParent : 4C93478A
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "rm_game"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 49976A6E
	/// @DnDParent : 7229AE22
	/// @DnDArgument : "const" "rm_gameOver"
	case rm_gameOver:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 6201FE2F
		/// @DnDParent : 49976A6E
		game_restart();
		break;
}