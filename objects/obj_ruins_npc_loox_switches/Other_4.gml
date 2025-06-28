if global.ruins_colored_switches_pressed = 12
{global.ruins_colored_switches_pressed = 11
x = rm_start_x
y = rm_start_y
instance_nearest(x,y,obj_switch).is_pressed = 0
instance_nearest(x,y,obj_switch).descr_text = "ruins_switch_last"}