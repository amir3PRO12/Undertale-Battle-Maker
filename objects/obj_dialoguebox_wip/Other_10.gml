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
			["Dialogue box","Debug time!_scr:scr_dialogue_debug_switch;"],
			
			// Book 1; Lines read one after another then an array of choices and what they
			// lead to. ["CHOICE TEXT", "$go_to_this_part$to_this_book"]
			["_face:spr_sans_dialogue_test;Much to test","Choose what to ", 
			[["Multiple lines","$choice_one$0"],
			["Cycles","$choice_two$1"],// This choice leads to choice_two book 2
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
	test:
			[
			["_face:spr_nosprite;Expecting much from this version?_pause:45; We're still in the middle of the development!","You better go visit Snowdin right now. We'll call you when we're done."],
			["_face:spr_nosprite;Are you still here?","What do you want?_voice:mus_silence;txt_speed:0.3;", 
			[["Nothing","$nothing$0"],
			["Anything","$anything$0"],
			["I'm already leaving"]]
			],
			
			["_skip:0;_shaking:0.5;_face:spr_toby_dog;txt_speed:0.25;You fool._pause:30; You have no idea of what's coming."]
			
			],
			
	anything: 
			[
				["_face:spr_nosprite;Something _scr:scr_do_something;happened..."]
			],
			
	nothing: 
			[	
				["_face:spr_nosprite;Nothing happened..."]
			],
	}
smol_objects_library =
		{
			sign_base:
			[
			["It is a sign."] 
			],
			
			sign1:
			[
			["That's a sign N1. And it got a lot to say._skip:0;","_skip:3;",
			"txt_speed:0.8;Proin eget risus tempor tortor condimentum blandit. Nunc a leo sit amet dui sollicitudin egestas eget vitae sem. Fusce sit amet molestie",
			"Ut elit est, auctor eget bibendum quis, volutpat ut metus. Quisque mollis augue eget dictum fermentum. Ut eget nibh at dolor luctus",
			"Sed congue mi vitae nulla sagittis, eget eleifend dolor mattis. Nullam eget lacus leo. Mauris mollis quis augue eget aliquam.",
			"Etiam tempus, sem et congue facilisis, nunc erat tincidunt neque, quis egestas massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti.",
			"_skip:2;Got it?_pause:30;\n-Got it."]
			],
			
			sign2:
			[
			["That's a sign N2txt_speed:0.1;...txt_speed:0.5;_color:255; Something_color:16777215; is not right about it..."]
			],
			
			sign3:
			[
			["That's a sign N3......","_wavingx:0.5,30,0.2;_wavingy:1,120,0.25;DETERMINATIOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOON","_wavingx:0,0,0;_wavingy:0,0,0;..."]
			],
		
		}
}

library_name = 
{
part1_name:[["TEXT","text","text...",[["choice1"],["choice2","$part2_name$0"]]]],
part2_name:[["yup"]]
}