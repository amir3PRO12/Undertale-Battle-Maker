
draw_set_font(fon_open_sans)
if hovering {
	draw_set_color(obj_editor_player.soul_color)	
}

draw_rectangle(x-1,y-1,x+width+1,y+height+1,true)
draw_text(x, y, text + cursor);

draw_set_font(fon_determination_sans_web)
draw_set_color(c_white)