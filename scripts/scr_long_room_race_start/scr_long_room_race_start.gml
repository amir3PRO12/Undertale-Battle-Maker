function scr_long_room_race_start(){
	
	audio_stop_sound(mus_ruins)
	audio_play_sound(mus_race,50,1)
	obj_ruins_npc_froggit_race1.race_state = 1
	obj_ruins_npc_froggit_race1.descr_text = "froggit_long_room1_race_started" 
	obj_ruins_npc_froggit_race1.book_switch_max = 1
	obj_ruins_race_finish.is_active = 1
	
}