//Accept key and skip key for skipping the texts and going to the next page of the dialogue box.
var accept_key = (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_left));
var skip_key = (keyboard_check_pressed(vk_rshift) or keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift) or mouse_check_button_pressed(mb_right));


var dialogue_box_x = camera_get_view_x(view_camera[0]) + -30;
var dialogue_box_y = camera_get_view_y(view_camera[0]) + 155;

//the setup where our dialogue box will appear and where the text will look like and animate.
if setup == false{
	setup = true;
	//what the font and where the text will appear.
	draw_set_font(fon_determination_sans_web);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//this will loop through the pages.
	page_number = array_length(text);
	for (var _page = 0; _page < page_number; _page++){
		
		//finds how many alphabet words are in each pages and stores that number in the "Text_length" array.
		text_length[_page] = string_length(text[_page]);
		
		text_x_offset[_page] = 44;
	}
}


//typing the text.
if draw_chara < text_length[page]{
	draw_chara += text_spd;
	draw_chara = clamp(draw_chara, 0, text_length[page]);
}


//flip through the pages.
if accept_key{
	//if typing animation is done, then we can go to the next page, else if there is none, close the dialogue box.
	if draw_chara == text_length[page]{
		//the next page.
		if page < page_number-1{
			page++;
			draw_chara = 0;
		}else{
			instance_destroy();	
		}
	}
}


if skip_key{
	//if not done typing the text.
	draw_chara = text_length[page];
}


//draws the dialogue box.
dialogue_box_image += dialogue_box_image_spd;
dialogue_box_sprite_width = sprite_get_width(dialogue_box_sprite);
dialogue_box_sprite_height = sprite_get_height(dialogue_box_sprite);

//back of the dialogue box.
draw_sprite_ext(dialogue_box_sprite, dialogue_box_image, dialogue_box_x + text_x_offset[page], dialogue_box_y, dialogue_box_width/dialogue_box_sprite_width, dialogue_box_height/dialogue_box_sprite_height, 0, c_white, 1);

//draw the text.
var _drawtext = string_copy(text[page], 1, draw_chara);
draw_text_ext(dialogue_box_x + text_x_offset[page] + border_x, dialogue_box_y + border_y, _drawtext, dialogue_sep, dialogue_width)