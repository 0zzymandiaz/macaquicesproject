/// @description texto

/// setar o texto
draw_set_alpha(1);
draw_set_font(fnt_game);
draw_set_halign(0.5);

///o texto apenas começa na
if layer_sequence_is_finished(blackin){
	
	draw_set_alpha(0.7)
	draw_rectangle_color(0,room_height,room_width,190,#6E848D,#6E848D,#6E848D,#6E848D,0);

draw_set_alpha(1)
///quem está falando
draw_text_scribble_ext(10,190,actualspeak[0+fala], 100,);
///texto
draw_text_scribble_ext(20,205,textlist[0+fala], 300,digitar);


}
