// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateIdle(){
if (hspeed != 0) image_xscale = sign(hspeed);


if distance_to_object(obj_monke) < 300
{
	state = Estate.Chase
	sprite_index = spr_sandmanR
}
if distance_to_object(obj_monke) > 300 < 600
{
	state = Estate.HardChase
	sprite_index = spr_sandmanR
}	
}

