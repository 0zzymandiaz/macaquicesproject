/// @description desenhar o pause
var gui_h = display_get_gui_height();
var gui_w = display_get_gui_width();


if global.pause
{
//Interface

draw_set_alpha(.8)
draw_set_color(c_black);
draw_rectangle(0,0, gui_w, gui_h, false);
draw_set_alpha(1);
draw_set_color(c_white);
};




