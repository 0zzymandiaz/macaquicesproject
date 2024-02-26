if (instance_exists(obj_monke)){

if instance_place(x,y-1,obj_monke) {
		image_speed = 1
		alarm[1] =room_speed*3;
		part_particles_burst(dirt,x,y,part_dirtBP);
		
	}
}

	if instance_place(x+3,y,obj_monke) {
		image_speed = 1
		alarm[1] =room_speed*3;
		part_particles_burst(dirt,x,y,part_dirtBP);
	}

	if instance_place(x-3,y,obj_monke) {
		image_speed = 1
		alarm[1] =room_speed*3;
		part_particles_burst(dirt,x,y,part_dirtBP);
	}











