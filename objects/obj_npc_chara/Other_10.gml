obj_dialoguebox_wip.interact_object = self.id
with(obj_dialoguebox_wip)
{
if not in_dialogue {

	scr_start_dialogue_idle(test_library,interact_object.book_switch,"test",1)
	
}
}
if book_switch != 2
book_switch += 1