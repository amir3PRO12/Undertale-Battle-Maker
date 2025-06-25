function scr_ruins_switch_pressed_last(){
	audio_play_sound(snd_chap,100,0,1,undefined,0.75)
	audio_play_sound(snd_win,100,0,1,undefined,0.9)
	interact_object.is_pressed = 1
	global.ruins_colored_switches_pressed = 13
	obj_ruins_npc_loox_switches.descr_text = "loox_switches_are_pressed"
	
}