var _dialog_x = 0;
var _dialog_y = gui_h * 0.7;
var _dialog_witdh = gui_w;
var _dialog_height = gui_h - _dialog_y;

draw_sprite_stretched(spr_dialoguebox, 0, _dialog_x, _dialog_y, _dialog_witdh, _dialog_height);

_dialog_x += 16;
_dialog_y += 16;

draw_set_font(fon_determination_sans_web);

var _name = messages[current_msg].name;

draw_text(_dialog_x, _dialog_y, _name);

_dialog_y += 40;

draw_text_ext(_dialog_x, _dialog_y, draw_message, -1, _dialog_witdh - _dialog_x * 2)