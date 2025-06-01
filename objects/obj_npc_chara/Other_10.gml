with(obj_dialoguebox_wip)
{
if not in_dialogue {
	library = test_library 
	book_number = array_length(debug_library[$ "test"])
	text = library[$ "test"][book]
	text_spd = 1
	current_voice = voice_test
	// Next time reading move dialogue to the next one or apply any needed logic
	book = min(book+1,book_number-1)
	
	in_dialogue = true
	
	can_walk_while_dialogue = 0
	
}
}