// Inherit the parent event
event_inherited();

// Exit typing on clicking somewhere else
if (not hovering && mouse_check_button_pressed(mb_left)) 
{	
	keyboard_string = ""
	typing = false;
	alarm[0] = -1
	cursor = ""
} 

if typing {
	
	// Kinda bugged string limitation based on width but works
	if (string_width(keyboard_string)<width) 
		// removes next line characters
		text = string_trim(keyboard_string, ["\n","\r","\t"]);
	
	keyboard_string = text;
	
	// cursor blinker
	if alarm[0] == -1 {
		alarm[0] = delay	
	}
}