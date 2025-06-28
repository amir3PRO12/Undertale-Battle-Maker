function files_find_recursive(directory, ignore_arr) {
	var files = [];
	files[0] = file_find_first(directory, fa_directory);
	var f = file_find_next();
	while (f != "" && !array_contains(ignore_arr, f)) {
		array_push(files, f);
		f = file_find_next();
	}
	file_find_close();
	return files;
}
