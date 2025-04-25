// Sprite and SOUL color editor & test for functions
// Component instantiation may be moved to a script to improve readability

// General properties to quickly change values everywhere
full_width = 320
padding = 10
window_height = 120
title_padding = 7

#region Player sprite 
window_sprite_width = 110
sprite_title = "YOUR VESSEL"

// More properties could be added to get rid of magic numbers
button_padding = 10
button_width = 28
button_height = 10
button_y = title_padding + string_height(sprite_title) - 3

// Instantiates button
new_button = instance_create_layer(padding+window_sprite_width - button_padding - button_width,
									padding + window_height - 6 - button_height*4,layer,obj_ui_button)
new_button.parent = self
new_button.width = button_width
new_button.height = button_height
new_button.text = "NEW"
new_button.activate = function() {
	// Creates a new preset with default frisk sprites and loads it
	obj_editor_player.sprite_presets[$ "New"] = [
			spr_player_frisk_right_walking,
			spr_player_frisk_up_walking,
			spr_player_frisk_left_walking,	
			spr_player_frisk_down_walking
			]
	obj_editor_player.preset_names = struct_get_names(sprite_presets)
	obj_editor_player.current_preset_num = array_get_index(obj_editor_player.preset_names, "New")
	obj_editor_player.load_preset()
	
}

load_button = instance_create_layer(padding+window_sprite_width - button_padding - button_width,
									padding + window_height - 6 - button_height*3,layer,obj_ui_button)
load_button.parent = self
load_button.width = button_width
load_button.height = button_height
load_button.text = "IMPORT"
load_button.activate = function() {
	var cur_sprite = sprite_presets[$ preset_names[current_preset_num]][current_direction]
	
	// Sadly this function doesn't work on Linux so I couldn't test it properly :(
	// Gets a path to a png image. May support other types if you add a background remover
	var file = get_open_filename("Strip-4 image|*.png","")
	// Creates sprite from filepath. Currently no options, so only strip images with 4 images "allowed"
	var sprite = sprite_add(file,4,false,false, 0,0)
	
	// If sprite is created set general values
	if sprite_exists(sprite) {
		// Currently all offsets are at the center, big sprites may look funky on collision because of that
		sprite_set_offset(sprite, sprite_get_width(sprite)/2, sprite_get_height(sprite)/2)
		sprite_set_speed(sprite,6,spritespeed_framespersecond)
		
		// If it isn't a game asset or a specifically named png, clear memory
		if not string_starts_with(sprite_get_name(cur_sprite), "spr_") {
			sprite_delete(cur_sprite)
		}
		
		// Set current direction to sprite
		sprite_presets[$ preset_names[current_preset_num]][current_direction] = sprite
	}
}

save_button = instance_create_layer(padding+window_sprite_width - button_padding - button_width,
									padding + window_height - 6 - button_height*2,layer,obj_ui_button)
save_button.parent = self
save_button.width = button_width
save_button.height = button_height
save_button.text = "SAVE"
save_button.activate = function() {
	// Set preset sprites to possibly new set name
	obj_editor_player.sprite_presets[$ set_textbox.text] = [
			obj_editor_player.current_preset[RIGHT],
			obj_editor_player.current_preset[UP],
			obj_editor_player.current_preset[LEFT],
			obj_editor_player.current_preset[DOWN],
			]
	
	// If it was new, clear it
	if preset_names[current_preset_num] == "New" {
		struct_remove(sprite_presets, "New")	
	}
	
	obj_editor_player.preset_names = struct_get_names(sprite_presets)
}

apply_button = instance_create_layer(padding+window_sprite_width - button_padding - button_width,
									padding + window_height - 6 - button_height,layer,obj_ui_button)
apply_button.parent = self
apply_button.width = button_width
apply_button.height = button_height
apply_button.text = "APPLY"
apply_button.activate = function() {
	// Set player sprite to set sprites
	obj_player.sprite[RIGHT] = obj_editor_player.current_preset[RIGHT]
	obj_player.sprite[UP] = obj_editor_player.current_preset[UP]
	obj_player.sprite[LEFT] = obj_editor_player.current_preset[LEFT]
	obj_player.sprite[DOWN] = obj_editor_player.current_preset[DOWN]
}





#region Sprite control buttons
#region Direction
// Buttons that set look direction preview
dir_button_left = instance_create_layer(padding+button_padding+64+13-7,
									padding + 50,layer,obj_ui_button)
dir_button_left.parent = self
dir_button_left.width = 8
dir_button_left.height = button_height
dir_button_left.text = "<"
dir_button_left.activate = function() {
	current_direction = LEFT
}

dir_button_up = instance_create_layer(padding+button_padding+64+13,
									padding + 50 - 8,layer,obj_ui_button)
dir_button_up.parent = self
dir_button_up.width = 8
dir_button_up.height = button_height
dir_button_up.text = "/\\"
dir_button_up.activate = function() {
	current_direction = UP
}


dir_button_right = instance_create_layer(padding+button_padding+64+13+7,
									padding + 50,layer,obj_ui_button)
dir_button_right.parent = self
dir_button_right.width = 8
dir_button_right.height = button_height
dir_button_right.text = ">"
dir_button_right.activate = function() {
	current_direction = RIGHT
}


dir_button_down = instance_create_layer(padding+button_padding+64+13,
									padding + 50 + 8,layer,obj_ui_button)
dir_button_down.parent = self
dir_button_down.width = 8
dir_button_down.height = button_height
dir_button_down.text = "\\/"
dir_button_down.activate = function() {
	current_direction = DOWN
}


#endregion

#region Frame control
// Buttons that set current frame of preview, ALWAYS 4 frames rn
frame_button_1 = instance_create_layer(padding+button_padding+(4+6)*0,
									padding + window_height - 6 - 10,layer,obj_ui_button)
frame_button_1.parent = self
frame_button_1.width = 8
frame_button_1.height = button_height
frame_button_1.text = "1"
frame_button_1.activate = function() {
	current_subimage = 0
}


frame_button_2 = instance_create_layer(padding+button_padding+(4+6)*1,
									padding + window_height - 6 - 10,layer,obj_ui_button)
frame_button_2.parent = self
frame_button_2.width = 8
frame_button_2.height = button_height
frame_button_2.text = "2"
frame_button_2.activate = function() {
	current_subimage = 1
}


frame_button_3 = instance_create_layer(padding+button_padding+(4+6)*2,
									padding + window_height - 6 - 10,layer,obj_ui_button)
frame_button_3.parent = self
frame_button_3.width = 8
frame_button_3.height = button_height
frame_button_3.text = "3"
frame_button_3.activate = function() {
	current_subimage = 2
}


frame_button_4 = instance_create_layer(padding+button_padding+(4+6)*3,
									padding + window_height - 6 - 10,layer,obj_ui_button)
frame_button_4.parent = self
frame_button_4.width = 8
frame_button_4.height = button_height
frame_button_4.text = "4"
frame_button_4.activate = function() {
	current_subimage = 3
}


play_button = instance_create_layer(padding+button_padding+(4+6)*4,
									padding + window_height - 6 - 10,layer,obj_ui_button)
play_button.parent = self
play_button.width = 8
play_button.height = button_height
play_button.text = ">>"
play_button.activate = function() {
	current_subimage += 1
	if current_subimage > sprite_get_number(current_preset[current_direction])-1 {
		current_subimage = 0
	}
}
#endregion

#endregion

// Presets that I could find in assets
sprite_presets = {
	Chara : [ // As in obj_player : RIGHT - UP - LEFT - DOWN
			spr_player_chara_right_walking,
			spr_player_chara_up_walking,
			spr_player_chara_left_walking,	
			spr_player_chara_down_walking
			],
	Frisk : [
			spr_player_frisk_right_walking,
			spr_player_frisk_up_walking,
			spr_player_frisk_left_walking,	
			spr_player_frisk_down_walking
			],
	Napstablook : 
			// CAUTION different naming scheme
			[
			spr_napstablook_right_walk,
			spr_napstablook_up_walk,
			spr_napstablook_left_walk,	
			spr_napstablook_down_walk
			],
}

preset_names = struct_get_names(sprite_presets)

current_preset_num = 1
current_direction = DOWN
current_subimage = 0

// Name textbox
set_textbox = instance_create_layer(padding+6,
									padding+button_y,layer,obj_ui_textinput)
set_textbox.parent = self
set_textbox.width = 64
set_textbox.height = 10

load_preset()

// Buttons to move between sets
prev_button = instance_create_layer(padding+button_padding+64,
									padding + button_y,layer,obj_ui_button)
prev_button.parent = self
prev_button.width = 8
prev_button.height = button_height
prev_button.text = "<"
prev_button.activate = function() {
	current_preset_num -= 1
	if current_preset_num < 0 {
		current_preset_num = array_length(preset_names) - 1
	}
	current_preset = sprite_presets[$ preset_names[current_preset_num]]
	set_textbox.text = preset_names[current_preset_num]
}

next_button = instance_create_layer(padding+button_padding+64+26,
									padding + button_y,layer,obj_ui_button)
next_button.parent = self
next_button.width = 8
next_button.height = button_height
next_button.text = ">"
next_button.activate = function() {
	current_preset_num += 1
	if current_preset_num >= array_length(preset_names) {
		current_preset_num = 0
	}
	load_preset()
}

// General function to reload current set values
function load_preset() {
	current_preset = sprite_presets[$ preset_names[current_preset_num]]
	set_textbox.text = preset_names[current_preset_num]	
}

#endregion




#region Player SOUL
window_soul_width = 90

soul_title = "YOUR SOUL"
soul_color = c_red
soul_y = 45

slider_padding = 10
slider_height = 10
slider_start_y = 75
slider_inbetween = 3

// HSV sliders
hue_slider = instance_create_layer(full_width-padding-window_soul_width + slider_padding,
									padding+slider_start_y,layer,obj_ui_slider_gradient)
hue_slider.parent = self
hue_slider.width = window_soul_width - slider_padding*2
hue_slider.height = slider_height
hue_slider.max_amount = 255
hue_slider.color_points = [c_red, c_yellow, c_lime, c_aqua, c_blue, c_fuchsia, c_red]

sat_slider = instance_create_layer(full_width-padding-window_soul_width + slider_padding,
									padding+slider_start_y+slider_height+slider_inbetween,layer,obj_ui_slider_gradient)
sat_slider.parent = self
sat_slider.width = window_soul_width - slider_padding*2
sat_slider.height = slider_height
sat_slider.max_amount = 255
sat_slider.slider_pos = 1
sat_slider.amount = 255
sat_slider.color_points = [c_white, c_red]

val_slider = instance_create_layer(full_width-padding-window_soul_width + slider_padding,
									padding+slider_start_y+(slider_height+slider_inbetween)*2,layer,obj_ui_slider_gradient)
val_slider.parent = self
val_slider.width = window_soul_width - slider_padding*2
val_slider.height = slider_height
val_slider.max_amount = 255
val_slider.slider_pos = 1
val_slider.amount = 255
val_slider.color_points = [c_black, c_red]

#endregion