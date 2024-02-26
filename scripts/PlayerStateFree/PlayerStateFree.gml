function PlayerStateFree(){
	script_execute(get_input)
on_ground = place_meeting(x, y + 1, obj_solid) || place_meeting(x, y + 1, obj_moveblock);

hsp_rounded = floor(hspd)

sliding = false

#region Movimetação Horizontal

if !in_sequence{
	
if move_left {
	image_xscale = -1};
if move_right{
	image_xscale = 1};

// Aplica aceleração
if (horizontal_input != 0) {
    hspd += acceleration * horizontal_input;
	
	hspd = clamp(hspd, -max_speed, max_speed);
} else{
	if(hspd >  fric) {
		hspd -= fric;
	} else if (hspd < -fric) {
		hspd += fric;
	} else{
		hspd = 0
	}
}
 
 	//Macaco vira
if move_left {
	image_xscale = -1};
if move_right{
	image_xscale = 1};
	#endregion
}
	//Animação macaco anda
	if (hspd==0) {
    if sprite_index != spr_monke image_index = 0;
    sprite_index = spr_monke;
  }
  else {
    sprite_index = spr_monkewalk;
  };

#region	Movimentação Vertical
//Pulo Coyote
if on_ground = false
{
	if coyote_counter > 0
	{
		coyote_counter -= 1;
		if jumped = false
		{
			if key_jump
			{
				vspd = -10;
				jumped = true;
			}
		}
	}
}
else
{
	jumped = false;
	coyote_counter = coyote_max;
};

	//Pulo
if key_jump {
	
	buffer_counter = buffer_max;}
	
	if buffer_counter > 0 {
		buffer_counter -= 1;
		
		if on_ground{
			repeat(6)	part_particles_burst(terra,x,y,part_dirt);
			vspd = -10;
			buffer_counter = 0;
			jumped = true
			audio_play_sound(snd_jump,1,0,0.5)
		}
};

	
		if keyboard_check_released(vk_space) && vspd<0 {
		vspd *= 0.2	
};

coyoteWall -= 1

if coyoteWall > 0 && on_ground = false{
	if (key_jump){
	vspd = -7.3;
	hspd  = 10.3*sign(hspd);
	coyoteWall = 0
	audio_play_sound(snd_jump,1,0);
	}
}
		

#endregion
		

if on_ground = false {
    if vspd > 0{
        if place_meeting(x + 3, y, obj_solid) and key_right or place_meeting(x - 3, y, obj_solid) and key_left{
            onAWall = 1
            sliding = true
            coyoteWall = 15
            part_particles_burst(terra,x+(sprite_width/2),y+(sprite_height/2),part_dirt);
        } else {
            sliding = false;
            onAWall = 0;
            }
        }else{
    sliding = false;
    onAWall = 0;
    };

}


	
if sliding = false {
		onAWall = 0
	}

if onAWall != 0 {
 state = Pstate.Slide	
}

		//Gravidade
if place_free(x, y + space_ahead){
	_gravity = 0.4;
}else{
	_gravity = 0;
	}
	
vspd += _gravity;



#region // Colisão

	//colisião horizontal
	 if (place_meeting(x + hspd, y, obj_solid)){
		while (!place_meeting(x+sign(hspd),y,obj_solid))
{
x += sign (hspd)}
hspd = 0;
 };
 
 	//Colisão horizontal moveblock
if (place_meeting(x + hspd, y, obj_moveblock)){
	var instance = instance_place(x + hspd, y, obj_moveblock)
	if (instance != noone) {
		x += instance.horizontal_speed * instance.dir
}
hspd = 0;
 };
 
x += hspd;
 
 	//Colisão Vertical moveblock
if (place_meeting(x, y + 3, obj_moveblock)){
		while (!place_meeting(x,y+sign(vspd), obj_moveblock))
{
y +=sign(vspd)}
vspd =0;

var instance = instance_place(x, y + vspd, obj_moveblock)
if (instance != noone) {
		on_plataform = true;
		
		if (horizontal_input = 0){
		hspd = (instance.horizontal_speed) * instance.dir;
		}
	} else{
		on_plataform = false;
	}
 };
	
 
	//Colisão Vertical		
	if (place_meeting(x,y+vspd,obj_solid)){
		while (!place_meeting(x,y+sign(vspd),obj_solid))
{
y +=sign(vspd)}
vspd =0;
 };

y += vspd;



#endregion 
	
#region //Sprite index
//Macaco antes

	if (hspd = 0) {
    if sprite_index != spr_monke image_index = 0;
    sprite_index = spr_monke;
  }
  else {
    sprite_index = spr_monkewalk;
	image_speed = 1
  };
  //Macaco 

  //Macaco olha para cima
if (on_ground = true) && (hspd = 0){
		if key_up {
			sprite_index = spr_moneklookup
			image_speed = 1
			state= Pstate.Up
		}
  }
if (on_ground = true){
		if key_down	{
			sprite_index = spr_monkedown
			image_speed = 1
			state = Pstate.Down
		} 
  }

#endregion


}
