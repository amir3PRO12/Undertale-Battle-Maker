if is_active = 1
if point_distance(x,y,obj_player.x,obj_player.y) > 60
{
is_active = 0
with obj_dialoguebox_wip
{
scr_start_dialogue_idle(dummy_cutscene,0,"what_what_what",0.5)
}
is_angry = 1
book_switch = 8
vspeed = -0.5
sprite_index = spr_dummy_angry
}

if is_angry = 1 or is_angry = 3 or is_angry = 2 or is_angry = 4
{
	if vspeed > 1
	angry_direction = -1
	if vspeed < -1
	angry_direction = 1
	
if angry_direction = 1
vspeed += 0.033
if angry_direction = -1
vspeed -= 0.033

}

if is_angry = 2
{
image_angle = random_range(0,360)
}

if is_angry = 4
{
image_angle = 0
}

if is_angry = 5
{
sprite_index = spr_dummy
vspeed = 0
}