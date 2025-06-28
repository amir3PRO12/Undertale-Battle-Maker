input_update();
if (!textbox_active && array_length(global.textbox_array) > 0) {
	current_textbox = 0;
	textbox_active = true;
} else if (textbox_active && array_length(global.textbox_array) > 0) {
	var t = global.textbox_array[current_textbox];
	if (t == undefined) {
		exit;
	}
	t.update();
	if (t.finished) {
		if ((key_confirm.pressed || key_menu.held) /* && room != rm_battle*/) { // uncomment this when you make the battle system
			current_textbox++;
			if (current_textbox >= array_length(global.textbox_array)) {
				textbox_active = false;
				if (instance_exists(obj_player)) obj_player.active = true;
				global.textbox_array = [];
                
                // Put code for entering a battle in here
				if (t.triggersEncounter) {}
			}
		}
	}
	if (key_cancel.pressed || key_menu.held) {
		t.typist.skip();
	}
} else if (array_length(global.textbox_array) <= 0 && textbox_active) {
	textbox_active = false;
}
