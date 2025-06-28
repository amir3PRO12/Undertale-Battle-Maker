if (instance_exists(obj_player)) {
    obj_player.active = false;
}
if (array_length(global.textbox_array) > 0) {
    exit;
}
input_update();

if (key_confirm.pressed) {
    save_game_manual();
    instance_destroy();
    obj_player.active = true;
}