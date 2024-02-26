/// @description Insert description here
// You can write your code in this editor
if room = stage1_4{
		instance_destroy(obj_sandman);
		instance_create_layer(obj_tigrespawn.sx,obj_tigrespawn.sy,"Player",obj_sandman);
		global.areabamboo = 1;
	}
	instance_destroy();


