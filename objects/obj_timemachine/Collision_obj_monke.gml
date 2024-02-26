/// @description animação macaco
switch room {
case stage1_5:
if obj_monke.state = Pstate.Free{
	global.cena = 1;
	obj_monke.image_alpha = 0;
	obj_monke.state = Pstate.Scene
	sprite_index = spr_timemachine;
	obj_monke.vspd = 0;
	layer_sequence_play(final);
	camera_set_view_size(view_camera[0],640,480)
}
break;

}


