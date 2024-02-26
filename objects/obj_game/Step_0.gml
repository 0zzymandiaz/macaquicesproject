/// @description paralax e pause
#region Pause
if room != stagemenu{
	if keyboard_check_pressed(ord("P"))
    {
    global.pause = !global.pause;
	instance_create_layer(camera_get_view_x(view_camera[0]) + 160, camera_get_view_y(view_camera[0]) + 124, "Paused", obj_reset)
	
	instance_create_layer(camera_get_view_x(view_camera[0]) + 160, camera_get_view_y(view_camera[0]) + 188, "Paused", obj_exit)
	
	instance_create_layer(camera_get_view_x(view_camera[0]) + 160, camera_get_view_y(view_camera[0]) + 60, "Paused", obj_back)
} 
if global.pause = false{ 
	instance_destroy(obj_exit)	
	instance_destroy(obj_back)
	instance_destroy(obj_reset)
}
}
alarm[0] += 1;
// or
alarm[0] = alarm[0] + 1;

#endregion

//paralax
#region Paralax das fases
switch room{
	case stage1_1:
		var near = layer_get_id("Background3")
		var distant = layer_get_id("Background2")

		layer_x(near, lerp(0, camera_get_view_x(view_camera[0]),0.3))
		layer_x(distant, lerp(0, camera_get_view_x(view_camera[0]),0.7))
	break;

	case stage1_2:
		var near = layer_get_id("Background1")
		var distant = layer_get_id("Background2")

		layer_x(near, lerp(0, camera_get_view_x(view_camera[0]),0.9))
		layer_x(distant, lerp(0, camera_get_view_x(view_camera[0]),0.5))
	break;

	case stage1_4:
		var near = layer_get_id("Background")
		var distant = layer_get_id("Background_1")

		layer_x(near, lerp(0, camera_get_view_x(view_camera[0]),0.95))
		layer_x(distant, lerp(0, camera_get_view_x(view_camera[0]),0.5))
	break;
}
#endregion

