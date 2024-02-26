/// @description Insert description here
// You can write your code in this editor

if global.checks = 1 & para = 0{

obj_monke.image_alpha = 0;
layer_sequence_play(cut);	
part_system_destroy(fogueira);
part_system_destroy(fumaca);
para = 1;
}
if para = 1{
obj_monke.state = Pstate.Scene;	
}

if layer_sequence_is_finished(cut) room_goto_next();