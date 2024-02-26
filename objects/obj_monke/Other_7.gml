/// @description voltar no check point
if(global.pause){
image_speed = 0
exit;
}

if state = Pstate.Respawn{
		if room = stage1_4{
		instance_destroy(obj_sandman);
		instance_create_layer(obj_tigrespawn.sx,obj_tigrespawn.sy,"Player",obj_sandman);
	}
	state = Pstate.Free;
	audio_pause_sound(snd_respawn);
}

if state = Pstate.Fight or state = Pstate.Die{
	
		ini_open("savefile");
	x = ini_read_real("eureka","x",0);
	y = ini_read_real("eureka","y",0);
	ini_close();
	
	repeat(50) part_particles_burst(revive,x,y,part_respawn);

	state = Pstate.Respawn;
}