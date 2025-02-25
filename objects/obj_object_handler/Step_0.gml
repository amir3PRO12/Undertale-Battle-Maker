
//if object disappear, you can move in the object and it will be invisible, else, it will work like a normal object.
if object_disappear == true{
	obj_player.can_move_in_object = false;
	visible = false;
}else if object_disappear == false{
	obj_player.can_move_in_object = true;
	visible = true;
}