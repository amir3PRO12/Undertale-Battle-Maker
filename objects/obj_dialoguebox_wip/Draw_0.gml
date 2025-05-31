// If not in dialogue skip everything
if not in_dialogue {
	return
}

//Accept key and skip key for skipping the texts and going to the next page of the dialogue box.
var accept_key = (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_left));
var skip_key = (keyboard_check_pressed(vk_rshift) or keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift) or mouse_check_button_pressed(mb_right));
var skip_key_hold = (keyboard_check(vk_rshift) or keyboard_check(ord("X")) or keyboard_check(vk_shift) or mouse_check_button(mb_right));


var dialogue_box_x = camera_get_view_x(view_camera[0]) + -30;
var dialogue_box_y = camera_get_view_y(view_camera[0]) + 155;

//the setup where our dialogue box will appear and where the text will look like and animate.
if setup == false{
	setup = true;
	//what the font and where the text will appear.
	draw_set_font(font);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	// reset values
	page = 0
	page_number = array_length(text);
	text_length = []
	text_x_offset = []
	
	choice_page = undefined
	current_choice = 0
	choices = []
	
	// check for lengths and choices
	for (var _page = 0; _page < page_number; _page++){
		
		// If there is a choice array set a page when plr'll choose
		if is_array(text[_page]) and choice_page == undefined {
			choice_page = _page-1

			// Add choice text to array
			for (var _choice = 0; _choice < array_length(text[_page]); _choice++) {
				array_push(choices, text[_page][_choice][0])
			}
			
			// skip length for this one
			continue;
		}
		//finds how many alphabet words are in each pages and stores that number in the "Text_length" array.
		text_length[_page] = string_length(text[_page]);
		
		text_x_offset[_page] = 44;
		
		//We need to make temp variable so that editing it in the game like deleting or adding symbols would not affect variable in a library
		text_to_draw = text[page]
		text_length_temp = text_length[page]
		
	}
}



//typing the text.
if draw_chara < text_length_temp{
	chara_counter += text_spd+skip_key_hold*skip_spd*can_skip
	while chara_counter > 1
	{chara_counter--
	scr_calculate_txt_speed()
	{draw_chara++
		if !audio_is_playing(current_voice)
		audio_play_sound(current_voice,100,0)
	}}
	draw_chara = clamp(draw_chara, 0, text_length_temp);
}


//flip through the pages.
if accept_key{
	//if typing animation is done, then we can go to the next page, else if there is none, close the dialogue box.
	if draw_chara == text_length_temp{
		// back to start char
		draw_chara = 0;
		
		//the next page.
		if page < page_number-1{
			
			// if player needs to choose something
			if choice_page == page {
				
				// If we go nowhere skip array and read the rest
				if array_length(text[page+1][current_choice]) == 1 {
				
						page += 2;
						if page >= page_number-1 {
							// Exit dialogue and step
							setup = false;
							in_dialogue = false
							return
						}
				}
				
				// If go to another part get ready for clean up and get the part and book
				setup = false;
				var _arr = string_split(text[page+1][current_choice][1],"$",true,2)
				// If there is no book, go to the first one
				if array_length(_arr) == 1 {
					array_push(_arr,0)	
				}
				// set text to the book
				text = library[$ _arr[0]][real(_arr[1])]
				return

			} else {
				page++;
				text_to_draw = text[page]
				text_length_temp = text_length[page]
				
				// same as above but doesn't need to be chosen
				if string_starts_with(text_to_draw,"$") {
					setup = false;
					var _arr = string_split(text_to_draw,"$",true,2)
					if array_length(_arr) == 1 {
						array_push(_arr,0)	
					}
					text = library[$ _arr[0]][real(_arr[1])]
					return
				}
			}
		}else{
			// exit dialogue, ask for setup next time
			setup = false
			in_dialogue = false
		}
}
}


if skip_key{
	
}


//draws the dialogue box.
dialogue_box_image += dialogue_box_image_spd;
dialogue_box_sprite_width = sprite_get_width(dialogue_box_sprite);
dialogue_box_sprite_height = sprite_get_height(dialogue_box_sprite);

//back of the dialogue box.
draw_sprite_ext(dialogue_box_sprite, dialogue_box_image, dialogue_box_x + text_x_offset[page], dialogue_box_y, dialogue_box_width/dialogue_box_sprite_width, dialogue_box_height/dialogue_box_sprite_height, 0, c_red, 1);

//draw the text.
var _drawtext = string_copy(text_to_draw, 1, draw_chara);
draw_text_ext(dialogue_box_x + text_x_offset[page] + border_x, dialogue_box_y + border_y, _drawtext, dialogue_sep, dialogue_width)

// draw choices when needed
if choice_page == page {
	var _choices_num = array_length(choices)
	
	// evenly divide width between choices
	var choice_width = dialogue_width div (_choices_num)
	
	// Choice navigation with clamping
	if keyboard_check_pressed(vk_left) {
		current_choice = max(current_choice-1,0)	
	}
	if keyboard_check_pressed(vk_right) {
		current_choice = min(current_choice+1, _choices_num-1)	
	}
	
	// Draw all choices and soul to represent current one
	// Looks... ok.
	for (var _choice = 0; _choice <  _choices_num; _choice++) {
		draw_text_ext(dialogue_box_x + text_x_offset[page] + border_x + (choice_width)*(_choice) + choice_extra_border,
					dialogue_box_y + border_y + string_height(text_to_draw), 
					choices[_choice], dialogue_sep, choice_width)
		
		if _choice == current_choice {
			draw_sprite(spr_soul_choose, 0, 
						dialogue_box_x - 8 + text_x_offset[page] + border_x - (choice_offset / 2) + (choice_width)*(_choice) + choice_extra_border,
						dialogue_box_y + 8 + border_y  + string_height(text_to_draw))	
		}
	}
}
