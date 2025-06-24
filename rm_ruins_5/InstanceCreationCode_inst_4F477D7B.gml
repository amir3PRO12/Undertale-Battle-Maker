target_rm = rm_ruins_4;
target_x = 1150;
target_y = 135;

is_special = 1

target_face = LEFT;

function special(){
	if obj_ruins_race_finish.is_active = 1
	{
obj_ruins_npc_froggit_race1.descr_text = "froggit_long_room1_race_stopped"
obj_ruins_npc_froggit_race1.book_switch_max = 1
obj_ruins_npc_froggit_race1.book_switch = 0
obj_ruins_npc_froggit_race2.descr_text = "froggit_long_room2_race_stopped"
obj_ruins_npc_froggit_race2.book_switch_max = 0
obj_ruins_npc_froggit_race2.book_switch = 0
obj_ruins_race_finish.is_active = 0
}}