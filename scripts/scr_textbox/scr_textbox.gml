function textbox_glyph_correct(fontname, glyphs, seperation) {
    for (var i = 0; i < string_length(glyphs); i++) {
        scribble_glyph_set(fontname, string_char_at(glyphs,i), SCRIBBLE_GLYPH.SEPARATION, seperation);
    }
}
function dialog(_langval, _mugshot, _speed, _sound, _font = fnt_main, _trigger_battle = false, _battle = noone) {
    return {
        type: DIALOGTYPE.textbox,
        text: language(_langval),
        mugshot: _mugshot,
        speed: _speed,
        sound: _sound,
        font: _font,
        trigger_battle: _trigger_battle,
        battle: _battle
    };
}
function dialog_trigger_save() {
    return {
        type: DIALOGTYPE.savepoint
    };
}
function set_battle_to_encounter(battle) {
    global.__battle_data = battle;
}
function Textbox(dialog, asterisk, speed, sound, mugshot, outline = true, encounter_trig = false, font = fnt_main) constructor {
	#region Create Event
    width = 289;
	height = 76;
	typist = scribble_typist();
	typist.in(speed, 0);
    typeSpeed = speed;
    var wrapWidth = width - ((mugshot != 0) * 48)
	dialouge = asterisk ? string_wrap_asterisk(dialog, font, wrapWidth) : string_wrap(dialog, font, wrapWidth);
	finished = false;
	snd = sound;
	typist.pause();
	hasOutline = outline;
    charMugshot = mugshot;
    mugshotIndex = 0;
	triggersEncounter = encounter_trig;
	punctuation = [".", ",", "!", "?"];
    image_speed = 0.1;
    image_index = 0;
    textFont = font;
	typist.__function_on_complete = function() {
		finished = true;
	}
	typist.__function_per_char = function(_element, _position, _typist) {
        var char = string_char_at(dialouge, _position);
        if (snd != -1 && char != " " && char != "\n") {
		    if (audio_is_playing(snd)) audio_stop_sound(snd);
		    audio_play_sound(snd, 0, false);
        }
		if array_contains(punctuation, char) {
			typist.__speed = 0.1 * typeSpeed;
		} else if char != "\n" {
			typist.__speed = 0.5 * typeSpeed;
		} else {
            typist.__speed = 2;
        }
	}
	#endregion
	
	#region Step Event
	static update = function() {
		if (typist.get_paused()) {
			typist.unpause();
		}
	}
	#endregion
	
	#region Draw Event
	static draw = function() {
		var xx = 16;
		var yy = SCREEN_HEIGHT - 80;
		//if (room == rm_battle) yy -= 40;
		if (hasOutline) draw_sprite_stretched(spr_textbox, 0, xx, yy, width, height);
		var text = scribble(dialouge);
		text.__starting_font = is_string(textFont) ? textFont : font_get_name(textFont);
        if (charMugshot != -1) {
            if (!finished) {
                mugshotIndex += 0.25;
                if (mugshotIndex > 2) {
                    mugshotIndex = 0;    
                } 
            } else {
                mugshotIndex = 0;
            }
            draw_sprite(charMugshot, mugshotIndex, xx + 48, yy + (height * 0.5));
            xx += 64;
        }
		text.draw(xx + 14, yy + 12, typist);
        image_index += image_speed;
        if (image_index >= sprite_get_number(spr_textbox)) {
            image_index = 0;
        }
	}
	#endregion
}
function trigger_textbox(dialog, asterisk, speed, sound, mugshot, disable_player = true, outline = true, encounter_trig = false, font = fnt_main) {
	if (disable_player && instance_exists(obj_player)) obj_player.active = false;
	array_push(global.textbox_array, new Textbox(dialog, asterisk, speed, sound, mugshot, outline, encounter_trig, font));
}
function trigger_saveprompt() {
    instance_create(0, 0, obj_saveprompt);
}
function string_wrap(_string, _font, _wrapWidth) {
    var space_pos = 0;
    
    draw_set_font(_font);
    for (var i = 1; i <= string_length(_string); i++) {
        var char = string_char_at(_string, i);
        var _charWidth = string_width_scribble(char);
        
        if (char == "[" && string_char_at(_string, min(i + 1, string_length(_string))) != "[") {
            while (string_char_at(_string, i) != "]") {
                ++i;
            }
            continue;
        }
        
        var pos = ((i - ioff) * _charWidth) + _charWidth;
        if (char == " "){
            space_pos = i;
        }
        if (pos >= _wrapWidth) {
            _string = string_delete(_string, space_pos, 1);
            _string = string_insert("\n", _string, space_pos);
            ioff = i;
        }
    }
    
    return _string;
}
function string_wrap_asterisk(_string, _font, _wrapWidth) {
    _string = string_concat("* ", _string);
    _wrapWidth -= 24;
    var space_pos = 0;
    var ioff = 0;
    
    draw_set_font(_font);
    for (var i = 0; i <= string_length(_string); i++) {
        var char = string_char_at(_string, i);
        var _charWidth = string_width_scribble(char);
        
        if (char == "[" && string_char_at(_string, min(i + 1, string_length(_string))) != "[") {
            while (string_char_at(_string, i) != "]") {
                ++i;
            }
            continue;
        }
        
        var pos = ((i - ioff) * _charWidth) + _charWidth;
        if (char == " "){
            space_pos = i;
        }
        if (pos >= _wrapWidth) {
            _string = string_delete(_string, space_pos, 1);
            _string = string_insert("\n  ", _string, space_pos);
            ioff = i;
        }
    }
    return _string;
}

enum DIALOGTYPE {
    textbox,
    savepoint
}