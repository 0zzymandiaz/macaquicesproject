switch (state)
{
case Estate.Idle: TigerStateIdle(); break;
case Estate.Chase: TigerStateChase(); break;
}

if !place_meeting(x, y + 1, obj_solid){
	_gravity = 0.4;
}else{
	_gravity = 0;
	}
vspeed += _gravity

//colisião Horizontal
if (place_meeting(x + hspeed, y, obj_solid)){
while (!place_meeting(x+sign(hspeed),y,obj_solid))
{
x += sign (hspeed)}
hspeed = 0;
 };
	//Colisão Vertical
if (place_meeting(x,y+vspeed,obj_solid))
{

while (!place_meeting(x,y+sign(vspeed),obj_solid))
{
y +=sign(vspeed)
}
vspeed = 0;
};

if (place_meeting(x,y+vspeed,obj_OAsolidtigre))
{

while (!place_meeting(x,y+sign(vspeed),obj_OAsolidtigre))
{
y +=sign(vspeed)
}
vspeed = 0;
};

if (place_meeting(x + hspeed, y, obj_OAsolidtigre)){
while (!place_meeting(x+sign(hspeed),y,obj_OAsolidtigre))
{
x += sign (hspeed)}
hspeed = 0;
 };



if hspeed = 0 {
	sprite_index = spr_sandmanG;
}

if vspeed < 0 {
	sprite_index = spr_sandmanA;
	image_index = 1;
}

if vspeed < 0 {
	sprite_index = spr_sandmanA;
	image_index = 2;
}

///if global.areabamboo = 1{
//	if obj_monke.y >= y	state = Estate.Idle;
///}


