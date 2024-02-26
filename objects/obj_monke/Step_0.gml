/// @description Movimento, colisão etc...

if(global.pause) exit;

//Fricção aceleração e movimentção horizontal
switch (state)
{
case Pstate.Free: PlayerStateFree(); break;
case Pstate.Down: PlayerStateDown(); break;
case Pstate.Up: PlayerStateUp(); break;
case Pstate.Die: PlayerStateDie(); break;
case Pstate.Respawn: PlayerStateRespawn(); break;
case Pstate.Fight: PlayerStateFight(); break;
case Pstate.Slide: PlayerStateSlide(); break;
case Pstate.Scene: PlayerStateScene(); break;

}

if state = Pstate.Free and sprite_index = spr_monkewalk{
	if image_index = 3{
		audio_play_sound(snd_step,10,0);
	}
}

if place_meeting(x,y+1,obj_spike) and state != Pstate.Die{
	vspd = 0;
	hspd = 0;
	repeat(10) part_particles_burst(revive,x,y,part_respawn);	
	audio_play_sound(snd_respawn,10,0);
	
	state = Pstate.Die;
	}

