if (room == rm_battle) return;

if (camera_get_view_target(view_camera[0]) != noone) {
    camera_set_view_target(view_camera[0], noone);
}
views_enable(0);
views_disable(1, 2, 3, 4, 5, 6, 7);
