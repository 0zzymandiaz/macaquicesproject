/// @description Insert description here

if layer_sequence_is_finished(obj_timemachine.final) and start = 0{
	var timeinst = instance_find(obj_timemachine,0);

	var seqtime = layer_sequence_create("Assets_2",obj_timemachine.x,obj_timemachine.y,sqc_timend);
	var seqgemini = layer_sequence_get_instance(seqtime);

	sequence_instance_override_object(seqgemini,obj_timemachine,timeinst);
	alarm[0] = layer_sequence_get_length(seqtime);
	start = 1;
}