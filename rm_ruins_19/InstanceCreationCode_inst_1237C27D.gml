function Pressed_by_player()
{
	audio_stop_sound(mus_ruins)
	obj_ruins_npc_froggit.descr_text = "froggit_wrong_switch"
	obj_ruins_npc_froggit.image_speed = 0
	with obj_warp{
	target_rm = rm_ruins_20
	target_x = 678
	target_y = 112
	instance_destroy(obj_ruins_npc_mouse)
	}

}