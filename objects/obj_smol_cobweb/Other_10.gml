obj_dialoguebox_wip.interact_object = self.id
with(obj_dialoguebox_wip)
{
if not in_dialogue {
	
	scr_start_dialogue_idle(smol_objects_library,interact_object.book_switch,interact_object.descr_text,0.5)
	interact_object.image_index = 1
}
}
if book_switch < book_switch_max
book_switch += 1