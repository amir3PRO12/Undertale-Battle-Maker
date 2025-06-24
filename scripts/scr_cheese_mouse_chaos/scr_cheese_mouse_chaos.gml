function scr_cheese_mouse_chaos(){
	obj_mouse_hole.alarm[6] = 60
	audio_stop_sound(mus_ruins)
	audio_play_sound(snd_quake,25,1)
	obj_dialoguebox_wip.interact_object.book_switch+=1
}