/// @description musicas e sons
if(global.pause)exit;

audio_group_load(audioeffect);
audio_group_load(audiodide);

#region musicas e sons
switch room {
	case stageprolog: 
		audio_group_stop_all(audiogroup_default)
		audio_play_sound(snd_lab,2,true);
	break;

	case stage1_1: 
		audio_group_stop_all(audiogroup_default)
		audio_play_sound(music_cave,1,true);
	break;

	case stage1_2: 
		audio_group_stop_all(audiogroup_default)
		
		audio_play_sound(snd_rain,2,true);
		audio_play_sound(music_bamboo,1,true);
	break;

	case stage1_3:
		audio_group_stop_all(audiogroup_default)
		audio_play_sound(music_cavemen,1,true);
	break;

	case stage1_4: 
		audio_group_stop_all(audiogroup_default)
		audio_play_sound(snd_rain,2,true);
		audio_play_sound(music_tiger,1,true);
	break;
}


#endregion
