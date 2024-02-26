
function PlayerStateDown(){
	script_execute(get_input)
	
	if !place_meeting(x,y+1,obj_solid){
		state = Pstate.Free
	}
	
	if !key_down{
		state = Pstate.Free	
	}
	
    if (hspeed > 0) {
        hspeed = max(0, hspeed - fric);
    } else if (hspeed < 0) {
        hspeed = min(0, hspeed + fric);
    }
}