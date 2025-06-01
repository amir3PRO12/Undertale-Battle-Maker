#region //pauses the game if the game is not fucused.
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
#endregion

#region //Mouse Stuff.
#region //Mouse left, right, and middle click for going around on mouse.
left_click = (mouse_check_button(mb_left));
right_click = (mouse_check_button(mb_right));
middle_click = (mouse_check_button(mb_middle));
#endregion
#endregion

#region //keyboard Stuff.
#region //left, right, up, and down key for going around on keyboard.
if keyboard_arrow_keys == true{
	left_key = (keyboard_check(vk_left));
	right_key = (keyboard_check(vk_right));
	up_key = (keyboard_check(vk_up));
	down_key = (keyboard_check(vk_down));
}
interact_key = (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_left));
sprint_key = (keyboard_check(ord("X")) or keyboard_check(vk_shift) or keyboard_check(vk_lshift) or mouse_check_button(mb_right))
#endregion

#region //fixing the holding both arrow key on keyboard.
if (down_key == true and up_key == true and keyboard_arrow_keys == true){
	up_key = true;
	down_key = false;
} else if (left_key == true and right_key == true and keyboard_arrow_keys == true){
	right_key = true;
	left_key = false;
}
#endregion

can_walk = 1

if !obj_dialoguebox_wip.can_walk_while_dialogue and obj_dialoguebox_wip.in_dialogue 
{can_walk = 0
xspd = 0;
yspd = 0;
	}

#region //if pressed down key, set the key to 1, else if pressed up, set THAT key to 1, else, be 0. (It's For The Movement)
if keyboard_arrow_keys == true and can_walk == true{
	yspd = (down_key - up_key) * move_spd;
	xspd = (right_key - left_key) * move_spd;
}
#endregion


#region //Stops The Player When The Transation/Fade Is Not Done Yet.
if instance_exists(obj_player_stop){
	xspd = 0;
	yspd = 0;
}
#endregion
#endregion

#region //sets the sprite to where is gonna be when entering a room PLUS when you are walking/stopping.
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
#endregion

#region //animation, if you stop, the animation stops, if moving, the animation starts.
if xspd == 0 and yspd == 0{
	image_index = 0;	
}
#endregion

#region //Collisions With Walls.
if global.can_move_in_walls == false{
	if place_meeting(x + xspd, y, [obj_wall, obj_t_wall]){
		xspd = 0;
	}
	if place_meeting(x, y + yspd, [obj_wall, obj_t_wall]){
		yspd = 0;	
	}
}
#endregion

#region //Collisions With Sticky Objects.
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
#endregion

#region //Collisions With Ice.
if place_meeting(x + xspd, y, obj_ice_sliding){
	can_move_in_ice = true;
}
if place_meeting(x, y + yspd, obj_ice_sliding){
	can_move_in_ice = true;
}
#endregion


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

#region //Press X To Run
if sprint_key{
	image_speed = 2;
	move_spd = 3;
} else{
	image_speed = 1;
	move_spd = 2;
}
#endregion

#region //Interaction with object
if interact_key
if !obj_dialoguebox_wip.in_dialogue 
{object_to_interact = instance_nearest(x+xspd*4,y+yspd*4,obj_interactable)
	if face = DOWN 
	{interact_collision_x = 0
	interact_collision_y = 16}
	if face = UP
	{interact_collision_x = 0
	interact_collision_y = -16}
	if face = RIGHT 
	{interact_collision_x = 16
	interact_collision_y = 8} 
	if face = LEFT
	{interact_collision_x = -16
	interact_collision_y = 8}
	if instance_exists(object_to_interact)
if collision_line(x,y,x+interact_collision_x,y+interact_collision_y,object_to_interact,1,1)
with (object_to_interact)
{
if obj_player.object_to_interact = self.id
event_user(0)
}

}
#endregion
////LVing UP
//HP = MAX_HP; 
//MAX_HP = 20 + (LV - 1) * 4; //If MAX_HP is 20 and your LV is 2, it turns your MAX_HP to 24... yeah... um... idk math...
//ATK = (LV - 1) * 2; //it's the same but it goes up like this, 2, 4, 6, 8, 10, 12, 14, 16 and etc...
//DEF = floor((LV - 1) / 4); //this is more complicated that I don't even understand... so... uh... have fun.