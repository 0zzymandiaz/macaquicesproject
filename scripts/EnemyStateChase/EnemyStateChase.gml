function EnemyStateChase(){
sprite_index = spr_sandmanR;
vir = 0
if (hspeed != 0) dir = sign(hspeed);
if (hspeed != 0) image_xscale = sign(hspeed);

vir = sign(obj_monke.x - x); 
hspeed = vir * 3;
image_speed = 1
fric = 0.10

	// Aplica fricção
    if (hspeed > 0) {
        hspeed = max(0, hspeed - fric);
    } else if (hspeed < 0) {
        hspeed = min(0, hspeed + fric);
    }


if place_meeting(x+trigger_dist*sign(hspeed), y, obj_jumptrigger){
	vspeed -= jumpspeed
	sprite_index = spr_sandmanA;
}

if !place_empty(x, y, obj_stoptrigger) {
	hspeed = 0
	sprite_index = spr_sandmanG;
} 


if distance_to_object(obj_monke) > 400
{
	state = Estate.HardChase
	sprite_index = spr_sandmanR
}	

}
