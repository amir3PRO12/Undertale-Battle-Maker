// Parent of all interactive ui components that has all basic functions for one

// Instance parent to combine elements together for one object
parent = undefined
persistent = true

// Mouse and click detection variables
hovering = false
clicked = false

width = 100
height = 20

// What to do on click
function activate() {
	
}

// set values every frame to change appearance
function appearance_state() {
	if (clicked) 
	{
		image_index = 2;
	} 
	else if (hovering) 
	{
		image_index = 1;
	} 
	else 
	{
		image_index = 0;
	} 	
}