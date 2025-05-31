// Consider this event as pressing Z looking at interactable object

if not in_dialogue {
	library = debug_library 
	book_number = array_length(debug_library[$ "test"])
	text = debug_library[$ "test"][book]
	text_spd = 0.5
	current_voice = voice_test
	// Next time reading move dialogue to the next one or apply any needed logic
	book = min(book+1,book_number-1)
	
	in_dialogue = true
	
}