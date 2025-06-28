if (array_length(global.textbox_array) > 0) {
    exit;
}
var x1 = promptx - (prompt_width * 0.5);
var y1 = prompty - (prompt_height * 0.5);
var x2 = x1 + prompt_width;
var y2 = y1 + prompt_height;
draw_sprite_stretched(spr_textbox, 0, x1, y1, prompt_width, prompt_height);

draw_set_font(fnt_main);

draw_text_scribble(x1 + 8, y1 + 8, time_displayable(global.Run_Time));
