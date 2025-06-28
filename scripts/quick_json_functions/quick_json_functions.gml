function JSON_create(directory, structure, makePretty = true) {
	var file = file_text_open_write(directory);
	var serializedData = json_stringify(structure, makePretty);
	file_text_write_string(file, serializedData);
	file = file_text_close(file);
}
function JSON_struct_write(directory, variableName, value, makePretty = true) {
	var json = JSON_read(directory);
	json[$ variableName] = value;
	JSON_create(directory, json, makePretty);
}
function JSON_array_write(directory, arrayIndex, value, makePretty = true) {
	var json = JSON_read(directory);
	json[arrayIndex] = value;
	JSON_create(directory, json, makePretty);
}
function JSON_struct_read(directory, variableName) {
	var json = JSON_read(directory);
	return json[$ variableName];
}
function JSON_array_read(directory, arrayIndex) {
	var json = JSON_read(directory);
	return json[arrayIndex];
}
function JSON_read(directory) {
	var file = file_text_open_read(directory);
	var serializedData = "";
	while (!file_text_eof(file)) {
		serializedData += file_text_readln(file);
		serializedData += "\n";
	}
	var deserializedData = json_parse(serializedData);
	file = file_text_close(file);
	return deserializedData;
}
