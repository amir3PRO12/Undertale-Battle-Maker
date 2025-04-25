// Inherit the parent event
event_inherited();

if clicked {
	hovering = true
	
	// set slider depending on mouse position
	var _x = max(device_mouse_x_to_gui(0)-x, 0)
	slider_pos = clamp(_x / width, 0, 1)
	amount = slider_pos * max_amount
}

