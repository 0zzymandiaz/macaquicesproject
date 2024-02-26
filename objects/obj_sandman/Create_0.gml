instance_create_layer(2144,448,"colision",obj_stoptrigger);
instance_create_layer(2720,384,"colision",obj_stoptrigger);
instance_create_layer(3264,320,"colision",obj_stoptrigger);
instance_create_layer(3988,288,"colision",obj_stoptrigger);

hspeed = 0
vspeed = 0
dashing = false
dashSpd = 10
dashMin = 7
dashfric = 0.7
paradin = 0;
areabamboo = 0;

state = Estate.Idle

enum Estate
{
Idle,
Chase,
HardChase,
WarmUp,
Dash
}
