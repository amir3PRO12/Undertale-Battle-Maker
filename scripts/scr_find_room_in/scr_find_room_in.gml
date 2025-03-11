function find_room_in(struct, _room = room){
	if is_struct(struct) {
		var _room_name = room_get_name(_room)
		
		// looks for a specific room or room group in the struct
		// e.g. rm_ruins_entrance_1 -> rm_ruins_entrance -> rm_ruins
		do {
		if struct_exists(struct, _room_name) {
			return struct[$ _room_name]	
		} 
		
		var _room_group_delimiter = string_last_pos("_", _room_name)
		_room_name = string_delete(_room_name, _room_group_delimiter, string_length(_room_name)+1-_room_group_delimiter) 
		} until (string_count("_", _room_name) < 1)
		
		// if nothing was found try to fall back on a default value
		if struct_exists(struct, "default") {
			return struct[$ "default"]	
		}
	}
}