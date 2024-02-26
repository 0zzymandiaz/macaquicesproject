
function PlayerStateScene(){
	
	on_ground = place_meeting(x, y + 3, obj_solid);

hsp_rounded = floor(hspd)

sliding = false

hspd = 0;

sprite_index = spr_monke;

		//Gravidade
if place_free(x, y + space_ahead){
	_gravity = 0.4;
}else{
	_gravity = 0;
	}
	
vspd += _gravity;

#region // Colisão
	//colisião horizontal
	 if (place_meeting(x + hspd, y, obj_solid)){
while (!place_meeting(x+sign(hspd),y,obj_solid))
{
x += sign (hspd)}
hspd = 0;
 };
 
 x += hspd;
 
			//Colisão Vertical
if (place_meeting(x,y+vspd,obj_solid))
{

while (!place_meeting(x,y+sign(vspd),obj_solid))
{
y +=sign(vspd)
}
vspd =0;
}

y += vspd;

#endregion 


if global.cena = 0 state = Pstate.Free;
}