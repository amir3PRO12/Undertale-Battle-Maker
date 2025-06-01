function scr_start_dialogue(Library,Book,Text_name_string,Text_speed=text_spd,Voice=current_voice,Face=dialogue_face_sprite,Can_Walk=can_walk_while_dialogue,Can_skip=can_skip,Auto_skip=auto_skip){
	library = Library 
	book = Book // Launch book 0 first time, on second time script changes the debug_book_switch to 1, so we launch book 1
	book_number = array_length(library[$ Text_name_string])
	text = library[$ Text_name_string][book]
	text_spd = Text_speed
	current_voice = Voice
	// Next time reading move dialogue to the next one or apply any needed logic.
	dialogue_face_sprite = Face
	in_dialogue = true
	
	can_walk_while_dialogue = Can_Walk
	can_skip = Can_skip 
	auto_skip = Auto_skip

}