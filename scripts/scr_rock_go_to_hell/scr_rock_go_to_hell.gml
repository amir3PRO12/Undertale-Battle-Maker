function scr_rock_go_to_hell(){
	crazy_bastard = instance_nearest(interact_object.x,interact_object.y,obj_rock)
	shocked_fella = instance_furthest(interact_object.x,interact_object.y,obj_interaction_trigger)
	
	crazy_bastard.sprite_index = spr_rock_go_to_hell
	crazy_bastard.image_speed = 0.4
	audio_stop_sound(mus_ruins)
	
	shocked_fella.descr_text = "rock_shocked"
	instance_destroy(interact_object)
}