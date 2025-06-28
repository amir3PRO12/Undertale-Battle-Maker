function scr_ruins_switch_pressed(){
	audio_play_sound(snd_chap,100,0,1,undefined,0.75)
	if interact_object.is_pressed = 0
	{
	global.ruins_colored_switches_pressed += 1 
	interact_object.is_pressed = 1
	interact_object.descr_text = "ruins_switch_already_pressed"
	}
}