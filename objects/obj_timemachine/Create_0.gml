/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

start = 0;
spin= 0;

if room = stage1_5{
///machineanim = layer_sequence_create("Assets_2",x,y,sqc_timemachine);
final = layer_sequence_create("Assets_2",286,290,sqc_stg5);
layer_sequence_pause(final);

timeinst = instance_find(obj_timemachine,0);

seqtime = layer_sequence_create("Assets_2",obj_timemachine.x,obj_timemachine.y,sqc_timemachine);
seqgemini = layer_sequence_get_instance(seqtime);

sequence_instance_override_object(seqgemini,obj_timemachine,timeinst);

///timend = layer_sequence_create("Assets_1",286,290,sqc_timend);
///layer_sequence_x(timend,1000);
///layer_sequence_pause(timend);

///gemini = layer_sequence_get_instance(timend)

}


