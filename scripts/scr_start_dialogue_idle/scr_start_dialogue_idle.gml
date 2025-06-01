function scr_start_dialogue_idle(Library,Book,Text_name_string,Text_speed=0.5,Voice=voice_test,Face=spr_nosprite,Can_Walk=0,Can_skip=1,Auto_skip=0){
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