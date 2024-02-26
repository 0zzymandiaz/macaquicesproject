// @description Variáveis
// particula

instance_create_layer(0,0,"Player",obj_camera);
terra = part_system_create_layer("particulas",false);
revive = part_system_create_layer("particulas",false);

yprevious = -y;
global.checks = 0;


//Movimento
speed= 0; // velocidade atual
hspd = 0
vspd = 0
fric = 0.3; // atrito
max_speed = 3;
acceleration = 0.2;
hsp_rounded=floor(hspd)
on_plataform = false

//Pulo
space_ahead = 1;
buffer_counter = 0;
buffer_max = 6;

//Coyoye Jump
coyote_counter = 0;
coyote_max = 5;
jumped = true;
coyoteWall = 0;


//State Machine
state = Pstate.Free;

enum Pstate{
Free,
Down,
Up,
Die,
Respawn,
Fight,
Slide,
Scene
}