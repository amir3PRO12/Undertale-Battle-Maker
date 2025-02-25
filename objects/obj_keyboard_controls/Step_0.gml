if (keyboard_check_pressed(vk_f1)){
	game_restart()	
}

if (keyboard_check_pressed(vk_f2)){
	room_restart()	
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
	obj_mouse.visible = false;
	obj_player.can_move_in_walls = true;
	obj_npc_handler.npc_disappear = true;
	obj_player.can_move_in_npcs = true;
	obj_player.can_move_in_ice = true;
	obj_player.can_move_in_object = true;
	obj_object_handler.object_disappear = true;
	window_set_cursor(cr_arrow);
	object_set_visible(obj_keyboard_controls, true);
	object_set_visible(obj_music_handler, true);
	object_set_visible(obj_route_handler, true);
	object_set_visible(obj_npc_handler, true);
	object_set_visible(obj_debug_mode, true);
	object_set_visible(obj_object_handler, true);
} else if Debug_Mode == false{
	show_debug_log(false);
	audio_debug(false);
	object_set_visible(obj_wall, false);
	object_set_visible(obj_sticky_wall, false);
	object_set_visible(obj_warp, false);
	obj_mouse.visible = true;
	obj_player.can_move_in_walls = false;
	obj_npc_handler.npc_disappear = false;
	obj_player.can_move_in_npcs = false;
	obj_player.can_move_in_ice = false;
	obj_player.can_move_in_object = false;
	obj_object_handler.object_disappear = false;
	window_set_cursor(cr_none);
	object_set_visible(obj_keyboard_controls, false);
	object_set_visible(obj_music_handler, false);
	object_set_visible(obj_route_handler, false);
	object_set_visible(obj_npc_handler, false);
	object_set_visible(obj_debug_mode, false);
	object_set_visible(obj_object_handler, false);
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