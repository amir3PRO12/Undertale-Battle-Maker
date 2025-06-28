obj_dialoguebox_wip.interact_object = self.id
with(obj_dialoguebox_wip)
{
if not in_dialogue {
	
	scr_start_dialogue_idle(smol_objects_library,0,interact_object.sign_message)
	
}
}