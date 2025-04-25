var _vx = camera_get_view_width(view_camera[0]);
var _vy = camera_get_view_height(view_camera[0]);
display_set_gui_size(_vx, _vy);

previous_mouse_window_x = window_mouse_get_x();
previous_mouse_window_y = window_mouse_get_y();

invisible_time = 120;

invisible_timer = invisible_time

window_set_cursor(cr_none);

depth = -9999