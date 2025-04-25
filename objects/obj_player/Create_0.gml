//this is made for the player so it doesn't move when pressing the arrow key.
keyboard_arrow_keys = true;

//left, right, up, and down key stuff for the keyboard.
left_key = (keyboard_check(vk_left));
right_key = (keyboard_check(vk_right));
up_key = (keyboard_check(vk_up));
down_key = (keyboard_check(vk_down));

//turn off and on the keybinds when doesn't needed.
left_key = false;
right_key = false;
up_key = false;
down_key = false;

//movement speed for the character on keyboard.
move_spd = 2;

//X and Y speed for the character on keyboard.
xspd = 0;
yspd = 0;

//Sprite Facing
sprite[RIGHT] = spr_player_frisk_right_walking;
sprite[UP] = spr_player_frisk_up_walking;
sprite[LEFT] = spr_player_frisk_left_walking;
sprite[DOWN] = spr_player_frisk_down_walking;

face = DOWN;


//Mouse Stuff

//left, right, and middle click stuff for the mouse.
left_click = (mouse_check_button(mb_left));
right_click = (mouse_check_button(mb_right));
middle_click = (mouse_check_button(mb_middle));

//movement speed for the character on mouse.
mouse_move_spd = 0;

//X and Y speed for the character on mouse.
xspdmouse = 0;
yspdmouse = 0;

//Main Objects
global.can_move_in_main_objects = false;

//Main NPCs
global.can_move_in_main_npcs = false;

//Move In The Walls Or Not
global.can_move_in_walls = false;

//Move In Ruins NPCs Or Not
global.can_move_in_ruins_npcs = false;

//Move In Snowdin NPCs Or Not
global.can_move_in_snowdin_npcs = false;

//Move In Ice Wall(Sliding In Ice.)
can_move_in_ice = false;

//Move In Ruins Objects or not.
global.can_move_in_ruins_object = false;

//Move In Snowdin Objects or not.
global.can_move_in_snowdin_object = false;


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