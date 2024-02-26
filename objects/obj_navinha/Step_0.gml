/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


var move_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var move_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("J"));
var key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));


var xinput = move_right - move_left;
var yinput = key_down - key_up;

move_and_collide(xinput*movespd,yinput*movespd,obj_solid);