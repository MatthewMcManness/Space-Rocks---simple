/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 59A80132
/// @DnDArgument : "expr" "room"
var l59A80132_0 = room;
switch(l59A80132_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5CDAFCE2
	/// @DnDParent : 59A80132
	/// @DnDArgument : "const" "rm_Win"
	case rm_Win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 4BE29090
		/// @DnDParent : 5CDAFCE2
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 1BFD287B
		/// @DnDParent : 5CDAFCE2
		/// @DnDArgument : "color" "$FF00FF00"
		draw_set_colour($FF00FF00 & $ffffff);
		var l1BFD287B_0=($FF00FF00 >> 24);
		draw_set_alpha(l1BFD287B_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1E85FFAC
		/// @DnDParent : 5CDAFCE2
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "room_height/4"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""You Win!""
		draw_text_transformed(room_width/2, room_height/4, string("You Win!") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 54704E09
		/// @DnDParent : 5CDAFCE2
		draw_set_colour($FFFFFFFF & $ffffff);
		var l54704E09_0=($FFFFFFFF >> 24);
		draw_set_alpha(l54704E09_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 57B4503F
		/// @DnDParent : 5CDAFCE2
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "(room_height/4)+150"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(room_width/2, (room_height/4)+150, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 29EB23E1
		/// @DnDParent : 5CDAFCE2
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "(room_height/4)+180"
		/// @DnDArgument : "caption" ""* * PRESS ENTER TO RESTART * *""
		draw_text(room_width/2, (room_height/4)+180, string("* * PRESS ENTER TO RESTART * *") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 31BA5D74
		/// @DnDParent : 5CDAFCE2
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "room_height - 30"
		/// @DnDArgument : "caption" ""Created by Matthew McManness""
		draw_text(room_width/2, room_height - 30, string("Created by Matthew McManness") + "");
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 65D4559E
	/// @DnDParent : 59A80132
	/// @DnDArgument : "const" "rm_gameOver"
	case rm_gameOver:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 45AC39B7
		/// @DnDParent : 65D4559E
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 7A1C1C1B
		/// @DnDParent : 65D4559E
		/// @DnDArgument : "color" "$FF0000FF"
		draw_set_colour($FF0000FF & $ffffff);
		var l7A1C1C1B_0=($FF0000FF >> 24);
		draw_set_alpha(l7A1C1C1B_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 5F29083B
		/// @DnDParent : 65D4559E
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""You Lose!""
		draw_text_transformed(room_width/2, 100, string("You Lose!") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 2475FE15
		/// @DnDParent : 65D4559E
		draw_set_colour($FFFFFFFF & $ffffff);
		var l2475FE15_0=($FFFFFFFF >> 24);
		draw_set_alpha(l2475FE15_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 179AECE4
		/// @DnDParent : 65D4559E
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "(room_height/4)+150"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(room_width/2, (room_height/4)+150, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 26ED15B8
		/// @DnDParent : 65D4559E
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "(room_height/4)+180"
		/// @DnDArgument : "caption" ""* * PRESS ENTER TO RESTART * *""
		draw_text(room_width/2, (room_height/4)+180, string("* * PRESS ENTER TO RESTART * *") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 7E321715
		/// @DnDParent : 65D4559E
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "room_height - 30"
		/// @DnDArgument : "caption" ""Created by Matthew McManness""
		draw_text(room_width/2, room_height - 30, string("Created by Matthew McManness") + "");
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 37EAC5B8
	/// @DnDParent : 59A80132
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 60B590F0
		/// @DnDParent : 37EAC5B8
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 1FB1DB56
		/// @DnDParent : 37EAC5B8
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 6107AE79
		/// @DnDParent : 37EAC5B8
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "SPR_Lives"
		/// @DnDSaveInfo : "sprite" "SPR_Lives"
		var l6107AE79_0 = sprite_get_width(SPR_Lives);
		var l6107AE79_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l6107AE79_2 = __dnd_lives; l6107AE79_2 > 0; --l6107AE79_2) {
			draw_sprite(SPR_Lives, 0, 20 + l6107AE79_1, 40);
			l6107AE79_1 += l6107AE79_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 305ADF02
	/// @DnDParent : 59A80132
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 2984FB8C
		/// @DnDParent : 305ADF02
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 519F43AB
		/// @DnDParent : 305ADF02
		/// @DnDArgument : "color" "$FF00FF00"
		draw_set_colour($FF00FF00 & $ffffff);
		var l519F43AB_0=($FF00FF00 >> 24);
		draw_set_alpha(l519F43AB_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 0F0D4AD1
		/// @DnDParent : 305ADF02
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "room_height/4"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""Space Rocks""
		draw_text_transformed(room_width/2, room_height/4, string("Space Rocks") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 0C082EBC
		/// @DnDParent : 305ADF02
		draw_set_colour($FFFFFFFF & $ffffff);
		var l0C082EBC_0=($FFFFFFFF >> 24);
		draw_set_alpha(l0C082EBC_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 40FDEE5C
		/// @DnDParent : 305ADF02
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "(room_height/4)+150"
		/// @DnDArgument : "caption" ""Score 1000 points to win!""
		draw_text(room_width/2, (room_height/4)+150, string("Score 1000 points to win!") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 61E295DF
		/// @DnDParent : 305ADF02
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "(room_height/4)+180"
		/// @DnDArgument : "caption" ""UP: Accelerate""
		draw_text(room_width/2, (room_height/4)+180, string("UP: Accelerate") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 4D416122
		/// @DnDParent : 305ADF02
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "(room_height/4)+210"
		/// @DnDArgument : "caption" ""LEFT/RIGHT: Rotate""
		draw_text(room_width/2, (room_height/4)+210, string("LEFT/RIGHT: Rotate") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3DE27075
		/// @DnDParent : 305ADF02
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "(room_height/4)+240"
		/// @DnDArgument : "caption" ""SPACE: Fire""
		draw_text(room_width/2, (room_height/4)+240, string("SPACE: Fire") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 5022F1CD
		/// @DnDParent : 305ADF02
		/// @DnDArgument : "color" "$FF00FF00"
		draw_set_colour($FF00FF00 & $ffffff);
		var l5022F1CD_0=($FF00FF00 >> 24);
		draw_set_alpha(l5022F1CD_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3D6E26CE
		/// @DnDParent : 305ADF02
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "(room_height/4)+270"
		/// @DnDArgument : "caption" ""* * PRESS ENTER TO START * *""
		draw_text(room_width/2, (room_height/4)+270, string("* * PRESS ENTER TO START * *") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4E2CC356
		/// @DnDParent : 305ADF02
		draw_set_colour($FFFFFFFF & $ffffff);
		var l4E2CC356_0=($FFFFFFFF >> 24);
		draw_set_alpha(l4E2CC356_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 17F735F9
		/// @DnDParent : 305ADF02
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "room_height-30"
		/// @DnDArgument : "caption" ""Created by Matthew McManness""
		draw_text(room_width/2, room_height-30, string("Created by Matthew McManness") + "");
		break;
}