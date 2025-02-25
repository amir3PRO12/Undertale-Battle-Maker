if npc_disappear == true{
	obj_player.can_move_in_npcs = true;
	visible = false;
}else if npc_disappear == false{
	obj_player.can_move_in_npcs = false;
	visible = true;
}