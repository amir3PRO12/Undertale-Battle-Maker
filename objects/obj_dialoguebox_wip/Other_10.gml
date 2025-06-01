if language = "eng"
{////
// Dialogue debug summon
// Later create a library of all books for ease of use and take the books from there
// Then make sure every collection of books remember its readed book variable
// OR
// Have all dialogue books baked into interactable objects

// Possibly combine some parts into a function or script

// If not in dialogue give the current book to dialogue box to read
////
debug_library =
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
			["Cycles","$choice_two$1"],// This choice leads to choice_two book 2
			["Speed","$choice_three$0"],
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
	choice_three: 
			[	
				// \n - new line, same as ENTER on keyboard
				["txt_speed:0.5;I speak normally! \ntxt_speed:1;But I can do it much faster \nthen you think!", "txt_speed:0.25;Or slower... txt_speed:0.15;Much slower......txt_speed:0.5;", "$test$1"]
			],
	
	}
// Library for tests
test_library =
	{
	//Name of the dialogue library part
	test:	// Array with all books inside
			[
			// Book 0; Consecutive lines read one after another
			["Expecting much from this version? We're still in the middle of the development!","You better go visit Snowdin right now. We'll call you when we're done."],
			
			// Book 1; Lines read one after another then an array of choices and what they
			// lead to. ["CHOICE TEXT", "$go_to_this_part$to_this_book"]
			["Are you still here?","What do you want?scr:scr_change_speaker_none;", 
			[["Nothing","$nothing$0"],
			["Anything","$anything$0"],
			["I'm already leaving"]]]
			
			],
			
			anything: 
			[	
				// \n - new line, same as ENTER on keyboard
				["Something happened..."]
			],
			
			nothing: 
			[	
				// \n - new line, same as ENTER on keyboard
				["Nothing happened..."]
			],
	}
}