//draw_sprite_stretched(spr_dialoguebox, 0, x,y, width, height)

draw_set_font(fon_open_sans)
if hovering {
	draw_set_color(obj_editor_player.soul_color)	
}

draw_text_ext(x, y, text, 1, width)

draw_set_font(fon_determination_sans_web)
draw_set_color(c_white)