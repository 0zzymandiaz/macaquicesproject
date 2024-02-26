/// @description Insert description here

if (global.pause) exit;

if (follow != noone) {
     xTo = follow.x;
     yTo = follow.y;
 }

 x += (xTo - x);

 if obj_monke.vspd <0 {
    y += (yTo - y)/25;
 }
 else{
     y += (yTo - y)/10;
 }


x = clamp(x, camWidth/2, room_width-(camWidth/2))
y = clamp(y, camHeigth/2+20, room_height-(camHeigth/2+30))

camera_set_view_pos(view_camera[0], x-(camWidth/2), y-(camHeigth/2)); 


