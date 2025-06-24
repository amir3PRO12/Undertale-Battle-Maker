obj_dialoguebox_wip.interact_object = self.id
with(obj_dialoguebox_wip)
{
if not in_dialogue {

	scr_start_dialogue_idle(test_library,interact_object.book_switch,"test",1,voice_true_chara)
	
}
}
if book_switch != 4
book_switch += 1