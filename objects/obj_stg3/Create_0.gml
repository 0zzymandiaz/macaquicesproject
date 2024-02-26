/// @description Insert description here
// You can write your code in this editor
fogueira = part_system_create_layer("particula",1,part_fire)
part_system_position(fogueira,160,1248);

fumaca = part_system_create_layer("particula",1,part_smoke)
part_system_position(fumaca,160,1216);

cut = layer_sequence_create("assets_1",-42,1124,sqc_stg3);

layer_sequence_pause(cut);
para = 0;