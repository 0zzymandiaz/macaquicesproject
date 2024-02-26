// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_input(){

	move_left = keyboard_check(vk_left) or keyboard_check(ord("A")) && place_free(x - space_ahead,y);
	move_right = keyboard_check(vk_right) or keyboard_check(ord("D")) && place_free(x + space_ahead,y);
	key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("J"));
	key_Interact = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("K"));
	key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
	key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));

	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	horizontal_input = move_right - move_left
}