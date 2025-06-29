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
	x += 2 * Owner.movedirx;
	y += 2 * Owner.movediry;
}