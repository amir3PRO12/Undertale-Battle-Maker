function scr_character_init_sprites() {
    spr_char_left = spr_player_frisk_left;
    spr_char_right = spr_player_frisk_right;
    spr_char_up = spr_player_frisk_up;
    spr_char_down = spr_player_frisk_down;
    
    spr_char_left_talk = spr_player_frisk_left_talk;
    spr_char_right_talk = spr_player_frisk_right_talk;
    spr_char_up_talk = spr_player_frisk_up_talk;
    spr_char_down_talk = spr_player_frisk_down_talk;
    
    spr_char_falling_down = spr_player_frisk_falling_down;
}
function scr_character_get_sprites(charname) {
    var sprites = ["left", "right", "up", "down", "left_talk", "right_talk", "up_talk", "down_talk", "falling_down"];
    var prefix = string_concat("spr_player_");
    
    for (var i = 0; i < array_length(sprites); i++) {
        var root = string_concat(charname, "_");
        var suffix = sprites[i];
        var sprite_name = string_concat(prefix, root, suffix);
        var sprite = asset_get_index(sprite_name);
        
        if (sprite == -1) {
            sprite_name = string_concat(prefix, "frisk", suffix);
            sprite = asset_get_index(sprite_name);
        }
        
        var varname = string_concat("spr_char_", suffix);
        variable_instance_set(id, varname, sprite);
    }
}

enum DIRECTION {
    Right,
    Up,
    Left,
    Down
}