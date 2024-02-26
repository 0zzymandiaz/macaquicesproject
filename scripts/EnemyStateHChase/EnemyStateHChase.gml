// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateHChase(){
var max_speed = 999;


if (hspeed != 0) image_xscale = sign(hspeed);

vir = sign(obj_monke.x - x);
hspeed = vir * 10;
fric = 0.15

	// Aplica fricção
    if (hspeed > 0) {
        hspeed = max(0, hspeed - fric);
    } else if (hspeed < 0) {
        hspeed = min(0, hspeed + fric);
    }
hspeed = clamp(hspeed, -max_speed, max_speed);

if place_meeting(x+trigger_dist*sign(hspeed), y, obj_jumptrigger){
	vspeed -= jumpspeed
}


if distance_to_object(obj_monke) < 300
{
	state = Estate.Chase
	sprite_index = spr_sandmanR
}
}
