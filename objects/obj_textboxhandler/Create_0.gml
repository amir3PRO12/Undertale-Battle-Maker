var letter_map = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
var nonletter_map = " ()[]<>{}0123456789!@#$%^&*-+=~`_.:,;?" + "\"" + "|/";

textbox_glyph_correct("fnt_main", letter_map, 8);
textbox_glyph_correct("fnt_main", nonletter_map, 8);
textbox_glyph_correct("fnt_sans", letter_map, 8);
textbox_glyph_correct("fnt_sans", nonletter_map, 8);
textbox_glyph_correct("fnt_papyrus", letter_map, 11);
textbox_glyph_correct("fnt_papyrus", nonletter_map, 11);

textbox_glyph_correct("fnt_sans", "wm", 10);
textbox_glyph_correct("fnt_sans", "il", 6);
textbox_glyph_correct("fnt_sans", "sj", 7);

textbox_glyph_correct("fnt_papyrus", "DMCAHBG", 12);
textbox_glyph_correct("fnt_papyrus", "Q", 14);
textbox_glyph_correct("fnt_papyrus", "LKTFJ", 10);
textbox_glyph_correct("fnt_papyrus", ".!?", 8);
textbox_glyph_correct("fnt_papyrus", "I", 5);
textbox_glyph_correct("fnt_papyrus", "OW", 13);
textbox_glyph_correct("fnt_papyrus", "PR", 9);

global.textbox_array = [];
global.__battle_data = noone;

current_textbox = 0;
textbox_active = false;
input_init();
depth = -20;

#macro SCREEN_WIDTH 320
#macro SCREEN_HEIGHT 240
