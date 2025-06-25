if (current_msg < 0) exit;

var _string = messages[current_msg].msg;

var accept_key = (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_left));
var skip_key = (keyboard_check_pressed(vk_rshift) or keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift) or mouse_check_button_pressed(mb_right));

if skip_key{
	current_chara = undefined;	
}

if (current_chara < string_length(_string)){
	current_chara += chara_spd
	draw_message = string_copy(_string, 0, current_chara)
}else if accept_key{
	current_msg++;
	if (current_msg >= array_length(messages)){
		instance_destroy();	
	}else{
		current_chara = 0;	
	}
}