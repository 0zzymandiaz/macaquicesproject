/// @description sistema de texto da cutscene
// o texto apenas avança quando a introdução acaba

if layer_sequence_is_finished (blackin) {
	digitar += 0.5;
}


#region Avançar texto com espaço
if layer_sequence_is_finished(blackin){
	
fala = clamp(fala,0,20);

if keyboard_check_pressed(vk_space) or digitar >= string_length(textlist[0+fala])+50{
	
switch fala{
	
	case 0:
		audio_play_sound(dub_cien1,0,0);
	break;
	
	case 1:
		audio_group_stop_all(audiodub);
		audio_play_sound(dub_cien2,0,0);
	break;
	
	case 2:
		audio_group_stop_all(audiodub);
		audio_play_sound(dub_cien3,0,0);
	break;
	
	case 3:
		audio_group_stop_all(audiodub);
		audio_play_sound(dub_cien4,0,0);
	break;
	
	case 4:
		audio_group_stop_all(audiodub);
		audio_play_sound(dub_cien5,0,0);
	break;
	
	case 5:
		audio_group_stop_all(audiodub);
		audio_play_sound(dub_cien6,0,0);
	break;
	
	case 6:
		
	break;
	
	case 7:
		audio_group_stop_all(audiodub);
		audio_play_sound(dub_cien7,0,0);
	break;
	
	case 8:
		
	break;
	
	case 9:
		audio_group_stop_all(audiodub);
		audio_play_sound(dub_cien8,0,0);
		layer_sequence_create("assetmamaco",0,0,sqc_mamaco7);
	break;

	case 10:
		audio_group_stop_all(audiodub);
		audio_play_sound(dub_cien9,0,0);
	break;
	
	case 11:
		audio_group_stop_all(audiodub);
		audio_play_sound(dub_cien10,0,0,);
		layer_sequence_create("assetmamaco",0,0,sqc_mamaco2);
	break;
	
	case 12:
		
	break;
	
	case 13:
		audio_group_stop_all(audiodub);
		audio_play_sound(dub_cien11,0,0);
	break;

	case 14:
		
	break;
	
	case 15:
		audio_group_stop_all(audiodub);
		audio_play_sound(dub_cien12,0,0);
		layer_sequence_create("assetmamaco",0,0,sqc_mamaco);
	break;
	
	case 16:
		audio_group_stop_all(audiodub);
		audio_play_sound(dub_cien13,0,0);
		obj_timemachine.sprite_index = spr_timemachine;
	break;
	
	case 17:
		audio_group_stop_all(audiodub);
		audio_play_sound(dub_cien14,0,0);
		audio_play_sound(snd_alarm,0,1);
	break;
	
	case 18:
		audio_group_stop_all(audiodub);
		audio_play_sound(dub_cien15,0,0);
	break;
	
	case 19:
		audio_group_stop_all(audiodub);
		audio_play_sound(dub_cien16,0,0);
		obj_timemachine.start = 1;
		
	break;
	}
	fala += 1;
	digitar = 0;
}
}

#endregion

#region Animação máquina do tempo
if obj_timemachine.start = 1 and off =0 {
	layer_sequence_play(seqcScreens);
	layer_sequence_play(seqcStand);
	layer_sprite_speed(cabo,1);
	
	repeat(5)  part_particles_burst(spark,120,160,part_spark);
	repeat(5)  part_particles_burst(spark,160,170,part_spark);
	repeat(5)  part_particles_burst(spark,190,160,part_spark);
	repeat(5)  part_particles_burst(spark,120,25,part_spark);
	repeat(5)  part_particles_burst(spark,160,10,part_spark);
	repeat(5)  part_particles_burst(spark,190,25,part_spark);
	
	var timeinst = instance_find(obj_timemachine,0);

	var seqtime = layer_sequence_create("Assets_1",obj_timemachine.x,obj_timemachine.y,sqc_timend);
	var seqgemini = layer_sequence_get_instance(seqtime);

	sequence_instance_override_object(seqgemini,obj_timemachine,timeinst);
	alarm[0] = layer_sequence_get_length(seqtime);
	off =1;
	
}

if layer_sprite_get_index(cabo) = 4 {
		layer_sprite_speed(cabo,0);
}

if layer_sequence_is_finished(blackout) room_goto(stage1_1);

#endregion