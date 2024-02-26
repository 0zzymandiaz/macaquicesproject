// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Script124(){
switch room{
 case stage1_1:
 if start = 0
{
	
obj_monke.state = Pstate.Scene;
layer_sequence_play(ending1)
start = 1;
}
break;

case stage1_2:
 if start = 0
{
	
obj_monke.state = Pstate.Scene;
layer_sequence_play(ending2)
start = 1;
}
break;

}
}