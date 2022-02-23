/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5276A051
/// @DnDArgument : "obj" "target"
var l5276A051_0 = false;
l5276A051_0 = instance_exists(target);
if(l5276A051_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7AADD4A8
	/// @DnDInput : 2
	/// @DnDParent : 5276A051
	/// @DnDArgument : "expr" "clamp(target.x,0,room_width-camera_width/2)"
	/// @DnDArgument : "expr_1" "clamp(target.y,0,room_height-camera_height/2)"
	/// @DnDArgument : "var" "cameraX"
	/// @DnDArgument : "var_1" "cameraY"
	cameraX = clamp(target.x,0,room_width-camera_width/2);
	cameraY = clamp(target.y,0,room_height-camera_height/2);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 640758B4
	/// @DnDInput : 3
	/// @DnDParent : 5276A051
	/// @DnDArgument : "function" "camera_set_view_pos"
	/// @DnDArgument : "arg" "view_camera(0)"
	/// @DnDArgument : "arg_1" "cameraX-camera_width/2"
	/// @DnDArgument : "arg_2" "cameraY-camera_height/2"
	camera_set_view_pos(view_camera(0), cameraX-camera_width/2, cameraY-camera_height/2);
}