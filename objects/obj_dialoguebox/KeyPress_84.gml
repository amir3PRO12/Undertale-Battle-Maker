////
// Dialogue debug summon
// Later create a library of all books for ease of use and take the books from there
// Then make sure every collection of books remember its readed book variable
// OR
// Have all dialogue books baked into interactable objects

// Possibly combine some parts into a function or script

// If not in dialogue give the current book to dialogue box to read
////

// Library for tests
var debug_library =
	{
	//Name of the dialogue library part
	test:	// Array with all books inside
			[
			// Book 0; Consecutive lines read one after another
			["Dialogue box","Debug time!"],
			
			// Book 1; Lines read one after another then an array of choices and what they
			// lead to. ["CHOICE TEXT", "$go_to_this_part$to_this_book"]
			["Much to test","Choose what to ", 
			[["Multiple lines","$choice_one$0"],
			["Cycles","$choice_two$1"], // This choice leads to choice_two book 2
			["Exit"]]]
			
			],
			
	choice_one: 
			[	
				// \n - new line, same as ENTER on keyboard
				["Hooman\nI rmember","your GENOSITEDS \n ...GENODUSTS \n\n\n ...GENODATES", "$test$1"]
			],
	choice_two:
			[
				["WDGASTER???"],
				["1", "$choice_two$2"], // Choice two leads to this one
				["2", "$choice_two$3"],
				["3", [["Again","$choice_two$1"],["Exit","$test$1"]]],
			],
	
	}

// Set up library and starting book
if not in_dialogue {
	library = debug_library
	book_number = array_length(debug_library[$ "test"])
	text = debug_library[$ "test"][book]
	// Next time reading move dialogue to the next one or apply any needed logic
	book = min(book+1,book_number-1)
	
	in_dialogue = true
	
}