#region //Mouse Stuff.
left_click = (mouse_check_button(mb_left));
right_click = (mouse_check_button(mb_right));
middle_click = (mouse_check_button(mb_middle));
#endregion

input_update();

movedirx = override_movement(movedirx, key_left.held, key_right.held);
movediry = override_movement(movediry, key_up.held, key_down.held);

object_to_interact = instance_place(x + movedirx, y + movediry, obj_interactable);

// Prevents slowing down of hsp if against a wall vertically
if (flat_meeting(x, y + movediry) || slope_meeting(x, y + movediry)) {
    movediry = 0;
}
// Prevents slowing down of vsp if against a wall horizontally
if (flat_meeting(x + movedirx, y) || slope_meeting(x + movedirx, y)) { 
    movedirx = 0;
}

oldmoving = moving;

if (!active) {
    moving = false;
    movedirx = 0;
    movediry = 0;
}

moving = true;
if (movediry == -1 && key_up.held && (flat_meeting(x, y - 1) || slope_meeting(x, y - 1))) { // Dancing
    if (sprite_index == spr_char_up) {
        sprite_index = spr_char_down;
    } else {
        sprite_index = spr_char_up;
    }
} else { // Normal movement
    if (movedirx == 1) {
        sprite_index = spr_char_right;
    } else if (movedirx == -1) {
        sprite_index = spr_char_left;
    } else if (movediry == 1) {
        sprite_index = spr_char_down;
    } else if (movediry == -1) {
        sprite_index = spr_char_up;
    } else {
        image_index = 0;
        moving = false;
    }
} 

if (!oldmoving && moving) {
    image_index = 1;
}

image_speed = 1 + (key_run.held * 0.5);
movespeed = 1.5 + key_run.held;

hsp = movedirx * movespeed;
vsp = movediry * movespeed;

if (!active) {
    hsp = 0;
    vsp = 0;
    moving = false;
    image_index = 0;
}

if (object_to_interact != noone && key_confirm.pressed) {
    with (object_to_interact) {
        event_user(0);
    }
}

scr_collision();
