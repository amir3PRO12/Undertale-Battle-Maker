keybind_sys_init();
input_init();

object_to_interact = noone;

inventory_key = false
inventory = instance_create_depth(0,0,0,obj_inventory)

movespeed = 1.5;
moving = false;
oldmoving = false;
scr_collision_init();

scr_character_init_sprites();
scr_character_get_sprites("frisk");

playerdir = DIRECTION.Down;

movedirx = 0;
movediry = 0;

//Mouse Stuff
left_click = (mouse_check_button(mb_left));
right_click = (mouse_check_button(mb_right));
middle_click = (mouse_check_button(mb_middle));

//movement speed for the character on mouse.
mouse_move_spd = 0;

//X and Y speed for the character on mouse.
xspdmouse = 0;
yspdmouse = 0;
active = true;

//Player/Frisk/Chara Stats
PLAYER_ID = 0;
NAME = "Chara";
HP = 20;
MAX_HP = 20;
LV = 1;
EXP = 0;
GOLD = 0;
ATK = 0;
DEF = 0;