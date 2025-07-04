if (keyboard_check_pressed(vk_f1)){
	game_restart()	
}

if (keyboard_check_pressed(vk_f2)){
	room_restart()	
}
if (keyboard_check_pressed(vk_space)) {
    trigger_textbox("the quick fox jumped over the lazy dogs", true, 1, voice_test, spr_mugshot_sans, true, true, false, fnt_sans);
}
if (keyboard_check_pressed(vk_f3) and Debug_Mode == false){
	Debug_Mode = true;
} else if (keyboard_check_pressed(vk_f3) and Debug_Mode == true){
	Debug_Mode = false;
}

if Debug_Mode == true{
	show_debug_log(true);
	audio_debug(true);
	object_set_visible(obj_wall, true);
	object_set_visible(obj_sticky_wall, true);
	object_set_visible(obj_warp, true);
	object_set_visible(obj_mouse, false);
	global.can_move_in_main_objects = true;
	global.can_move_in_main_npcs = true;
	global.can_move_in_walls = true;
	global.can_move_in_npcs = true;
	global.can_move_in_object = true;
	window_set_cursor(cr_arrow);
	object_set_visible(obj_keyboard_controls, true);
	object_set_visible(obj_music_handler, true);
	object_set_visible(obj_route_handler, true);
	object_set_visible(obj_npc_handler, true);
	object_set_visible(obj_object_handler, true);
} else if Debug_Mode == false{
	show_debug_log(false);
	audio_debug(false);
	object_set_visible(obj_wall, false);
	object_set_visible(obj_sticky_wall, false);
	object_set_visible(obj_warp, false);
	object_set_visible(obj_mouse, false);
	global.can_move_in_main_objects = false;
	global.can_move_in_main_npcs = false;
	global.can_move_in_walls = false;
	global.can_move_in_npcs = false;
	global.can_move_in_object = false;
	window_set_cursor(cr_none);
	object_set_visible(obj_keyboard_controls, false);
	object_set_visible(obj_music_handler, false);
	object_set_visible(obj_route_handler, false);
	object_set_visible(obj_npc_handler, false);
	object_set_visible(obj_object_handler, false);
}

if (keyboard_check_pressed(vk_f10)){
	room_goto(rm_battle);
}

if (keyboard_check_pressed(vk_escape)){
	game_end()	
}

if (keyboard_check_pressed(vk_f11) or keyboard_check_pressed(vk_f4)){
	if (window_get_fullscreen()){
		window_set_fullscreen(false);	
	}else{
		window_set_fullscreen(true);	
	}
}

if Debug_Mode == true
{
	if (keyboard_check_pressed(vk_f6))
	{
	room_goto_previous()
	obj_player.x =  200
	obj_player.y =  200
	}
	if (keyboard_check_pressed(vk_f7))
	{
	room_goto_next()
	obj_player.x =  200
	obj_player.y =  200
	}
	if (keyboard_check_pressed(vk_f5))
	room_goto(rm_ruins_entrance)
}


if (keyboard_check_pressed(vk_f10)) {
    room_goto(rm_battle);
}