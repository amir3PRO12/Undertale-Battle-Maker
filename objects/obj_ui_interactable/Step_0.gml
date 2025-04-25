// Follow parent instance
if parent != undefined {
	visible = parent.visible
}

// Do nothing if invisible
if not visible {
	return	
}

hovering = point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x,y,x+width,y+height);

if (hovering && mouse_check_button_pressed(mb_left)) 
{
	clicked = true;
} 

if (mouse_check_button_released(mb_left)) 
{
	clicked = false;

	if (hovering) 
	{
		activate()
	}
} 

appearance_state()