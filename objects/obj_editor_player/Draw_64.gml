#region Sprite
//draw window
draw_sprite_stretched(spr_dialoguebox,0,padding,padding,
						window_sprite_width,window_height)

// draw title
draw_set_halign(fa_center)		
draw_text(padding + window_sprite_width/2,padding+title_padding, sprite_title)
draw_set_halign(fa_left)

// draw sprite box
draw_rectangle(padding + 6, padding + window_height - 6 - 64 - 10,
				padding + 6 + 64, padding + window_height - 6 -10, true)
draw_sprite(current_preset[current_direction],current_subimage, padding + 6 + 32, padding + window_height - 6 - 32 - 10)
#endregion


#region SOUL
// draw window
draw_sprite_stretched(spr_dialoguebox,0,full_width-(padding+window_soul_width),padding,
						window_soul_width,window_height)

// draw soul
soul_color = make_color_hsv(hue_slider.amount, sat_slider.amount, val_slider.amount)
draw_sprite_ext(spr_soul_any,0,full_width-(padding+window_soul_width/2),padding+soul_y,
				2,2,0,soul_color,1)

// set color to dynamic sliders
sat_slider.color_points[1] = make_color_hsv(hue_slider.amount, 255, 255)
val_slider.color_points[1] = make_color_hsv(hue_slider.amount, 255, 255)

// draw title
draw_set_halign(fa_center)		
draw_text(full_width-(padding+window_soul_width/2),padding+title_padding, soul_title)
draw_set_halign(fa_left)
#endregion 