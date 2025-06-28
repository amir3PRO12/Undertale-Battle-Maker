function lang_init() {
    global.languages_arr = files_find_recursive("Language/*.lang", []);
    for (var i = 0; i < array_length(global.languages_arr); i++) {
    	global.languages_arr[i] = string_replace_all(global.languages_arr[i], ".lang", "");
    }
    global.langindex = 0;
    global.language = "eng";
    global.langdata = {};
}
function lang_deserialize(lang_id = global.languages_arr[global.langindex]) {
	var file = file_text_open_read(string_concat(working_directory, "Language/", lang_id, ".lang"));
	var arr = [];
	var langdata = {};
	while (!file_text_eof(file)) {
		var t = file_text_readln(file);
		if (t != "" && string_pos("=", t) != 0) {
			array_push(arr, t);
		}
	}
	file_text_close(file);
	for (var i = 0; i < array_length(arr); i++) {
		if (string_starts_with(arr[i], "#")) {
			array_delete(arr, i, 1);
		}
	}
	for (var i = 0; i < array_length(arr); i++) {
		var sarr = string_split(arr[i], "=");
		var stringdat = string_replace_all(sarr[1], "\"", "");
		langdata[$ sarr[0]] = stringdat;
	}
	return langdata;
}
function language(value) {
	if (struct_exists(global.langdata, value)) {
		return string(global.langdata[$ value]);
	} else {
		return "Could not fetch language value";
	}
}
