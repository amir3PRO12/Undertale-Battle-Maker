function input_init() {
	key_left = new Keybind("key_left"); 
	key_down = new Keybind("key_down"); 
	key_up = new Keybind("key_up"); 
	key_right = new Keybind("key_right");
	key_run = new Keybind("key_run");
	key_confirm = new Keybind("key_confirm");
	key_cancel = new Keybind("key_cancel");
    key_menu = new Keybind("key_menu");
}
function input_update() {
	key_left.update();
	key_down.update();
	key_up.update();
	key_right.update();
	key_run.update();
	key_confirm.update();
    key_cancel.update();
    key_menu.update();
}
function input_refresh() {
	keybinds_refresh();
	key_left.refresh();
	key_down.refresh();
	key_up.refresh();
	key_right.refresh();
	key_run.refresh();
	key_confirm.refresh();
    key_cancel.refresh();
    key_menu.refresh();
}
