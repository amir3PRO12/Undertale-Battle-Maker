if (room == rm_battle) return;

if (camera_get_view_target(view_camera[0]) != noone) {
    camera_set_view_target(view_camera[0], noone);
}

