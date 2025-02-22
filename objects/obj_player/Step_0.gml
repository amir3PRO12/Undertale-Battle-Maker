//pauses the game if the game is not fucused.
if !window_has_focus(){
	face = DOWN;
	keyboard_arrow_keys = false;
	obj_mouse.visible = false;
	audio_pause_all();
}else if window_has_focus(){
	keyboard_arrow_keys = true;
	obj_mouse.visible = true;
	audio_resume_all();
}


//keyboard Stuff.
//left, right, up, and down key for going around on keyboard.
if keyboard_arrow_keys == true{
	left_key = (keyboard_check(vk_left));
	right_key = (keyboard_check(vk_right));
	up_key = (keyboard_check(vk_up));
	down_key = (keyboard_check(vk_down));
}

//Mouse Stuff.
//Mouse left, right, and middle click for going around on mouse.
left_click = (mouse_check_button(mb_left));
right_click = (mouse_check_button(mb_right));
middle_click = (mouse_check_button(mb_middle));

//fixing the holding both arrow key on keyboard.
if (down_key == true and up_key == true and keyboard_arrow_keys == true){
	up_key = true;
	down_key = false;
} else if (left_key == true and right_key == true and keyboard_arrow_keys == true){
	right_key = true;
	left_key = false;
}

//if pressed down key, set the key to 1, else if pressed up, set THAT key to 1, else, be 0. (It's For The Movement)
if keyboard_arrow_keys == true{
	yspd = (down_key - up_key) * move_spd;
	xspd = (right_key - left_key) * move_spd;
}



//Stops The Player When The Transation/Fade Is Not Done Yet.
if instance_exists(obj_player_stop){
	xspd = 0;
	yspd = 0;
}

//sets the sprite to where is gonna be when entering a room PLUS when you are walking/stopping.
mask_index = sprite[DOWN];
if yspd == 0{
	if xspd > 0 {
		face = RIGHT;
	}
	if xspd < 0 {
		face = LEFT;
	}
}
if xspd > 0 and face == LEFT{
	face = RIGHT;	
}
if xspd < 0 and face == RIGHT{
	face = LEFT;	
}
if xspd == 0{
	if yspd > 0{
		face = DOWN;
	}
	if yspd < 0{
		face = UP;
	}
}
if yspd > 0 and face == UP{
	face = DOWN;	
}
if yspd < 0 and face == DOWN{
	face = UP;	
}
sprite_index = sprite[face];

//animation, if you stop, the animation stops, if moving, the animation starts.
if xspd == 0 and yspd == 0{
	image_index = 0;	
}

//Collisions With Walls.
if can_move_in_walls == false{
	if place_meeting(x + xspd, y, [obj_wall, obj_t_wall]){
		xspd = 0;
	}
	if place_meeting(x, y + yspd, [obj_wall, obj_t_wall]){
		yspd = 0;	
	}
}

//Collisions With Sticky Objects.
if place_meeting(x + xspd, y, obj_sticky_wall){
	if move_spd == 3{
		move_spd = 2;	
	}else if move_spd = 2{
		move_spd = 1	
	}else if move_spd = 1{
		move_spd = 0.5	
	}
}
if place_meeting(x, y + yspd, obj_sticky_wall){
	if move_spd == 3{
		move_spd = 2;	
	}else if move_spd = 2{
		move_spd = 1	
	}else if move_spd = 1{
		move_spd = 0.5	
	}
}

//Collisions With NPCs.
if can_move_in_npcs == false{
	if place_meeting(x + xspd, y, obj_npc_handler){
		xspd = 0;
	}
	if place_meeting(x, y + yspd, obj_npc_handler){
		yspd = 0;
	}
}

//Collisions With Ice.
if place_meeting(x + xspd, y, obj_ice_sliding){
	can_move_in_ice = true;
}
if place_meeting(x, y + yspd, obj_ice_sliding){
	can_move_in_ice = true;
}

//Collisions With Ice Again, Making Sure It Works. (Idk what I am doing... ok? plus, there is a bug that if you hit something while sliding, it makes you get stuck...)
if can_move_in_ice == true{
	if place_meeting(x + xspd, y, obj_ice_sliding){
		keyboard_arrow_keys = false;
	}else{
		keyboard_arrow_keys = true;
	}
	if place_meeting(x, y + yspd, obj_ice_sliding){
		keyboard_arrow_keys = false;
	}else{
		keyboard_arrow_keys = true;
	}
}


//gives you speed to move.
y += yspd;
x += xspd;

//Press X To Run
if (keyboard_check(ord("X")) or keyboard_check(vk_shift) or keyboard_check(vk_lshift) or mouse_check_button(mb_right)){
	image_speed = 2;
	move_spd = 3;
} else{
	image_speed = 1;
	move_spd = 2;
}

//LVing UP
HP = MAX_HP; 
MAX_HP = 20 + (LV - 1) * 4; //If MAX_HP is 20 and your LV is 2, it turns your MAX_HP to 24... yeah... um... idk math...
ATK = (LV - 1) * 2; //it's the same but it goes up like this, 2, 4, 6, 8, 10, 12, 14, 16 and etc...
DEF = floor((LV - 1) / 4); //this is more complicated that I don't even understand... so... uh... have fun.