///Pause
global.pause = false
depth = 50;
//Pega a altura e largura da tela

window_set_fullscreen(1);

global.holding = noone
global.areabamboo = 0;


blackin = layer_sequence_create("assets_1",0,0,sqc_blackin);
blackout = layer_sequence_create("assets_1",0,0,sqc_blackout);

layer_sequence_pause(blackout);





///alarm[3] = room_speed*1;
