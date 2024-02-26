/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_lab,2,true);

tamx = 1;
tamy = 1;
audio_group_load(audioeffect);


blackin = layer_sequence_create("escurecer",0,0,sqc_blackin);
seqcStand = layer_sequence_create("stand",0,0,sqc_stand);
	seqcScreens =layer_sequence_create("telas",0,0,sqc_telas);
	
	layer_sequence_pause(seqcStand);
	layer_sequence_pause(seqcScreens);
	
	cabo = layer_sprite_create("Assets_1",0,0,bg_cable);
	layer_sprite_speed(cabo,0);