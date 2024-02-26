// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function PlayerStateUp(){
script_execute(get_input)
	
	if key_up {
	   image_speed = 1
	}
	
	if !place_meeting(x,y+1,obj_solid){
		state = Pstate.Free
	}
	
	if !key_down{
		state = Pstate.Free	
	}

}