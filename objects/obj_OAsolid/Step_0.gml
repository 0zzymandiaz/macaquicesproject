script_execute(get_input)
if(global.pause) exit;

if (instance_exists(obj_monke)){

if bbox_bottom >= obj_monke.bbox_bottom {
		sprite_index = spr_OAsolid
} else {
	sprite_index = -1
}

with(obj_monke){
	var down = key_down && key_jump;
	
	if down{
		other.sprite_index = -1
	}
}
};








