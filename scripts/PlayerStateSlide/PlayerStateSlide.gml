// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function PlayerStateSlide(){
script_execute(get_input)
on_ground = place_meeting(x, y + 1, obj_solid) || place_meeting(x, y + 1, obj_moveblock)


if on_ground = false {
    if vspd > 0{
        if place_meeting(x + 3, y, obj_solid) and key_right or place_meeting(x - 3, y, obj_solid) and key_left{
            onAWall = 1
            sliding = true
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

if place_meeting(x + 5, y, obj_solid) && key_left{
	sliding = false
	coyoteWall = 5
	}
if place_meeting(x - 5, y, obj_solid) && key_right{
	sliding = false
    coyoteWall = 5
	}

if sliding = false && hspd = 0{
		onAWall = 0
	} 

//Aceleração

#region //Wall Jump
if (key_jump) and place_meeting(x + 3, y, obj_solid)
{
	state = Pstate.Free
	move_left = 1;
    vspd = -7;
	hspd = -7.5;
	onAWall = 0;
	audio_play_sound(snd_jump,1,0);
}
if (key_jump) and place_meeting(x - 3, y, obj_solid)
{
	state = Pstate.Free
	move_right = 1;
    vspd = -7;
	hspd  = 7.5;
	onAWall = 0;
	audio_play_sound(snd_jump,1,0);
}
#endregion

#region //Gravidade
if place_free(x, y + space_ahead){
	_gravity = 0.4;
} else{
	_gravity = 0;
}
	
if (onAWall != 0) {
vspd = _gravity / 10 * 20
sprite_index = spr_monkeslide
	}
if (vspd < 0) {
vspd += _gravity
    }
#endregion



#region // Colisão Horizontal
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
if (place_meeting(x,y+vspd, obj_moveblock)){
		while (!place_meeting(x,y+sign(vspd), obj_moveblock))
{
y +=sign(vspd)}
vspd =0;

var instance = instance_place(x, y + vspd, obj_moveblock)
if (instance != noone) {
		on_plataform = true;
		
		if (horizontal_input == 0){
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

if onAWall = 0 or on_ground = true{ //Switch State
	state = Pstate.Free
	}
}

