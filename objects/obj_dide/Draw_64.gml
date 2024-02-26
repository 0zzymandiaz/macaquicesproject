/// @description desenhar o texto
// You can write your code in this editor
if(global.pause) exit;

draw_set_font(fnt_gameb);

if global.cena > 0{

	draw_set_alpha(0.7);
	draw_rectangle_color(0,0,1440,150,0,0,#6E848D,#6E848D,0);

	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_halign(0.5);

	draw_text_scribble_ext(10,0,"D.I.D.E", 200);
	
	draw_text_scribble_ext(20,50,textlist[0+fala],1400,digitar);
	
}



