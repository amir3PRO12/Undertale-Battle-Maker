//Shows Debug Mode Stuff.
var room_name = room_get_name(room);
if obj_keyboard_controls.Debug_Mode == true{
	draw_set_font(fon_determination_mono_web);
	draw_text_color(16, 16, "Mouse_invis: " + string(obj_mouse.invisible_timer), c_white, c_white, c_yellow, c_yellow, 1);
	draw_text_color(16, 32, "Mouse_X: " + string(mouse_x), c_white, c_white, c_yellow, c_yellow, 1);
	draw_text_color(16, 48, "Mouse_Y: " + string(mouse_y), c_white, c_white, c_yellow, c_yellow, 1);
	draw_text_color(16, 64, "room: " + room_name, c_white, c_white, c_yellow, c_yellow, 1);
	draw_text_color(16, 80, "CPU_FPS: " + string(fps_real), c_white, c_white, c_yellow, c_yellow, 1);
	draw_text_color(16, 96, "Game_FPS: " + string(fps), c_white, c_white, c_yellow, c_yellow, 1);
	draw_text_color(16, 112, "CHARA_Face: " + string(face), c_white, c_white, c_yellow, c_yellow, 1);
}