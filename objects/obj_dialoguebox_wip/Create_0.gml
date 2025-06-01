depth = -9998
//dialogue box widgh and height.
dialogue_box_width = 295;
dialogue_box_height = 80;

//the border is the amount of pixel the text is gonna be away from the dialogue box white board or you can say the edges or something like that.
border_x = 8;
border_y = 8;

//this will be the separation vertically between the lines on each texts that is writting on the screen.
dialogue_sep = 12;

//this is the maximum width and height of where the text will ends and will create a new line and it goes on.
dialogue_width = dialogue_box_width - border_x*2;
dialogue_height = dialogue_box_height - border_y*2;


#region //what the dialogue box will look like.
dialogue_box_sprite = spr_dialoguebox;
dialogue_box_image = 0;
dialogue_box_image_spd = 0;
dialogue_box_sprite_width = 0;
dialogue_box_sprite_height = 0;
#endregion

//Page is like a book, when you are in a page for example page 1, you read it and go to the next page, the dialogue box is also like this.
page = 0;

//the number amount of pages we have.
page_number = 0;

// That's kinda you know like a bit of somewhat well pretty much you get me right
book = 0
book_number = 0

//the text that is going to be appear on the page.
text[0] = "";

//the effect typing for the text.

//this will make the game to know how many alphabet words are in the page we are viewing right now.
text_length[0] = string_length(text[0]);
text_x_offset = []

//this will show how many alphabet words are currently being drawn, you know the animation that types from the begining and goes all the way to the end.
draw_chara = 0;

//how fast you want the text to be drawn/the animation of the text to be drawn on the screen.
text_spd = 0.5;

// font that will be used throughout dialogue
font = fon_determination_sans_web

//we'll use this variable to check if a setup has been done and if it hasn't then we're going to run certain codes in our draw event before we actually try and get anything on screen.
setup = false;

// if in dialogue show dialogue box and start reading
in_dialogue = false

// Variables for when player has a choice
choice_page = 0
choices = []
choice_offset = 10;
choice_extra_border = 8
current_choice = 0

// current library in use
library = {}

// We need that to make dialogue speed fully customisable(like stopping for a second to do an artistic pause or changing word bullets on pills in the middle of the dialogue)
language = "eng" 
can_walk_while_dialogue = 0
interact_object = obj_player //noone
dialogue_face_sprite = spr_toby_dog
dialogue_face_sprite = spr_sans_dialogue_test
dialogue_face_sprite = spr_nosprite
dialogue_face_image = 0
dialogue_face_image_speed = 0
temp_pause = 0
face_xoffset = 0
face_yoffset = border_y
face_width = 4
library = []
text_to_draw = ""
text_spd_temp = 0

is_shaking = 0
text_y_temp = 0
shake_intensity = 1
shake_x = 0
shake_y = 0
shake_text = 0

skip_spd = 5 //That kinda thing instead of instaskipping
can_skip = 1
auto_skip = 0
text_length_temp = 0
current_voice = voice_test
chara_counter = 0
debug_book_switch = 0
event_user(0)