/// @description Insert description here
// You can write your code in this editor
if (Owner == noone)
{
	if (keyboard_check(vk_right))
	{
		x += 2;
	}
	if (keyboard_check(vk_down))
	{
		y += 2;
	}
	if (keyboard_check(vk_left))
	{
		x -= 2;
	}
	if (keyboard_check(vk_up))
	{
		y -= 2;
	}
}
else
{
	movedirx = Owner.movedirx
	movediry = Owner.movediry
	
	if !collision_point(x+movedirx*sprite_width/2,y,obj_battle_wall_square,1,1)
	x += 2 * movedirx
	if !collision_point(x,y+movediry*sprite_height/2,obj_battle_wall_square,1,1)
	y += 2 * movediry
	
	
}

