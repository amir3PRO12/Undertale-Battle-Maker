var mouse_window_x = window_mouse_get_x();
var mouse_window_y = window_mouse_get_y();

x = device_mouse_x_to_gui(0);
y = device_mouse_y_to_gui(0);

if (window_has_focus() == false) {
  window_set_cursor(cr_default);
} else {
  window_set_cursor(cr_none);
}

if (previous_mouse_window_x == mouse_window_x and previous_mouse_window_y == mouse_window_y
	and not mouse_check_button(mb_any)) {
    invisible_timer--;
    if (invisible_timer <= 0) {
        invisible_timer = 0;
        image_alpha = 0;
    }
} else {
    image_alpha = 1;
    invisible_timer = invisible_time;
}


previous_mouse_window_x = mouse_window_x;
previous_mouse_window_y = mouse_window_y;