function Create_Dialogue(_messages){
	if (instance_exists(obj_dialogue_box)) return;
	
	var _inst = instance_create_depth(0, 0, 0, obj_dialogue_box);
	_inst.messages = _messages;
	_inst.current_msg = 0;
}