if (textbox_active && array_length(global.textbox_array) > 0) {
	var t = global.textbox_array[current_textbox];
	if (t == undefined) {
		exit
	}
	t.draw();
}
