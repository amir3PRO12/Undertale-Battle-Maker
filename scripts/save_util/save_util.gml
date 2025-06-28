function load_game_property(_key, _default = "?") {
    ini_open("undertale_battlemaker.ini");
    var b = ini_read_string("General", _key, string(_default));
    if (string_digits(b) == string_replace(b, ".", "")) {
        b = real(b);
    }
    ini_close();
    return b;
}
function save_game_manual() {
    ini_open("undertale_battlemaker.ini");
    ini_write_multiple("General", [
        ["Name", obj_player.NAME],
        ["Love", obj_player.LV],
        ["Room", real(room)],
        ["FUN", global.Fun_Value],
        ["Time", global.Run_Time],
        ["PlayerX", obj_player.x],
        ["PlayerY", obj_player.y]
    ]);
    ini_close();
}
function load_game_info() {
    return {
        Name: load_game_property("Name", "Chara"),
        Love: load_game_property("Love", 1),
        Room: load_game_property("Room", real(rm_snowdin_37)),
        FUN: load_game_property("FUN", irandom(100)),
        Time: load_game_property("Time", 0),
        PlayerX: load_game_property("PlayerX", room_width * 0.5),
        PlayerY: load_game_property("PlayerY", (room_height * 0.5) + 30)
    }
}
function time_displayable(seconds) {
    seconds = ceil(seconds);
    var hours = 0;
    var minutes = 0;
    for (seconds = seconds; seconds >= 60; seconds -= 60) {
        minutes++;
    }
    for (minutes = minutes; minutes >= 60; minutes -= 60) {
        hours++;
    }
    if (seconds < 10) {
        seconds = string_concat("0", seconds);
    }
    if (minutes < 10) {
        minutes = string_concat("0", minutes);
    }
    var time = string_concat(hours, ":", minutes, ":", seconds);
    return time;
}
//@description I was lazy, okay?
//@param {String} section The section of the .ini to write to.
//@param {Any} values An array of values to write to the .ini file. The value can be a Real, String, Array/Struct, or DS Map/List.
function ini_write_multiple(section, values) {
    for (var i = 0; i < array_length(values); i++) {
        var key = values[i][0];
        var value = values[i][1];
        if (is_real(value)) {
            ini_write_real(section, key, value);
        } else if (is_string(value)) {
            ini_write_string(section, key, value);
        } else if (is_struct(value) || is_array(value)) {
            ini_write_string(section, key, json_stringify(value, false));
        } else {
            ini_write_string(section, key, string(value));
        }
    }
}