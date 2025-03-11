//Ruins
switch(room){
	//Ruins Entrance!
	case rm_ruins_entrance:
			if global.Ruins_Genocide = true{
			
			
			//NPCs Visible or not.
			object_set_visible(obj_npcs_main_parent, false);
			object_set_visible(obj_npcs_ruins_parent, false);
			
			//Objects Visible or not.
			object_set_visible(obj_object_main_parent, false);
			object_set_visible(obj_object_ruins_parent, false);
			
			//NPCs has hitbox or not.
			global.can_move_in_main_npcs = true;
			global.can_move_in_ruins_npcs = true;
			
			//Objects has hitbox or not.
			global.can_move_in_main_objects = false;
			global.can_move_in_ruins_object = true;
			
			}
			
			
			if global.Ruins_Neutral = true{
			//NPCs Visible or not.
			object_set_visible(obj_npcs_main_parent, false);
			object_set_visible(obj_npcs_ruins_parent, false);
			
			//Objects Visible or not.
			object_set_visible(obj_object_main_parent, true);
			object_set_visible(obj_object_ruins_parent, true);
			
			//NPCs has hitbox or not.
			global.can_move_in_main_npcs = true;
			global.can_move_in_ruins_npcs = true;
			
			//Objects has hitbox or not.
			global.can_move_in_main_objects = false;
			global.can_move_in_ruins_object = false;
				
				
			}
			
			
			
			if global.Ruins_Pacifist = true{
				
				
			//NPCs Visible or not.
			object_set_visible(obj_npcs_main_parent, true);
			object_set_visible(obj_npcs_ruins_parent, true);
			
			//Objects Visible or not.
			object_set_visible(obj_object_main_parent, true);
			object_set_visible(obj_object_ruins_parent, true);
			
			//NPCs has hitbox or not.
			global.can_move_in_main_npcs = false;
			global.can_move_in_ruins_npcs = false;
			
			//Objects has hitbox or not.
			global.can_move_in_main_objects = false;
			global.can_move_in_ruins_object = false;
			
			
			}
			
			
			if global.Ruins_True_Pacifist = true{
				
				
			//NPCs Visible or not.
			object_set_visible(obj_npcs_main_parent, true);
			object_set_visible(obj_npcs_ruins_parent, true);
			
			//Objects Visible or not.
			object_set_visible(obj_object_main_parent, true);
			object_set_visible(obj_object_ruins_parent, true);
			
			//NPCs has hitbox or not.
			global.can_move_in_main_npcs = false;
			global.can_move_in_ruins_npcs = false;
			
			//Objects has hitbox or not.
			global.can_move_in_main_objects = false;
			global.can_move_in_ruins_object = false;
		}
	break
	case rm_ruins_entrance_1:
	//Ruins.
	case rm_ruins:
	case rm_ruins_1:
	case rm_ruins_2:
	case rm_ruins_3:
	case rm_ruins_4:
	case rm_ruins_5:
	case rm_ruins_6:
	case rm_ruins_7:
	case rm_ruins_8:
	case rm_ruins_9:
	case rm_ruins_10:
	case rm_ruins_11:
	case rm_ruins_12:
	case rm_ruins_13:
	case rm_ruins_14:
	case rm_ruins_15:
	case rm_ruins_16:
	case rm_ruins_17:
	case rm_ruins_18:
	case rm_ruins_19:
	case rm_ruins_20:
	case rm_ruins_21:
	case rm_ruins_22:
	case rm_ruins_23:
	case rm_ruins_24:
	case rm_ruins_25:
	case rm_ruins_26:
	case rm_ruins_27:
	//Ruins Home.
	case rm_ruins_28:
	case rm_ruins_29:
	case rm_ruins_30:
	case rm_ruins_31:
	//Ruins Home, Your Room!
	case rm_ruins_32:
	case rm_ruins_33:
	//Ruins Toriel's Basement I think...??
	case rm_ruins_34:
	case rm_ruins_35:
	case rm_ruins_36:
	//Ruins Toriel's Basement Fighting Area!!
	case rm_ruins_37:
	//The End Of The Ruins.
	case rm_ruins_38:
	case rm_ruins_39:
	//Ruins Temmie Room!!
	case rm_ruins_40:
		if global.Ruins_Genocide = true{
			
			
			//NPCs Visible or not.
			object_set_visible(obj_npcs_main_parent, false);
			object_set_visible(obj_npcs_ruins_parent, false);
			
			//Objects Visible or not.
			object_set_visible(obj_object_main_parent, false);
			object_set_visible(obj_object_ruins_parent, false);
			
			//NPCs has hitbox or not.
			global.can_move_in_main_npcs = true;
			global.can_move_in_ruins_npcs = true;
			
			//Objects has hitbox or not.
			global.can_move_in_main_objects = false;
			global.can_move_in_ruins_object = true;
			
			}else if global.Ruins_Neutral = true{
			//NPCs Visible or not.
			object_set_visible(obj_npcs_main_parent, false);
			object_set_visible(obj_npcs_ruins_parent, false);
			
			//Objects Visible or not.
			object_set_visible(obj_object_main_parent, true);
			object_set_visible(obj_object_ruins_parent, true);
			
			//NPCs has hitbox or not.
			global.can_move_in_main_npcs = true;
			global.can_move_in_ruins_npcs = true;
			
			//Objects has hitbox or not.
			global.can_move_in_main_objects = false;
			global.can_move_in_ruins_object = false;
				
				
			}else if global.Ruins_Pacifist = true{
				
				
			//NPCs Visible or not.
			object_set_visible(obj_npcs_main_parent, true);
			object_set_visible(obj_npcs_ruins_parent, true);
			
			//Objects Visible or not.
			object_set_visible(obj_object_main_parent, true);
			object_set_visible(obj_object_ruins_parent, true);
			
			//NPCs has hitbox or not.
			global.can_move_in_main_npcs = false;
			global.can_move_in_ruins_npcs = false;
			
			//Objects has hitbox or not.
			global.can_move_in_main_objects = false;
			global.can_move_in_ruins_object = false;
			
			
			}else if global.Ruins_True_Pacifist = true{
				
				
			//NPCs Visible or not.
			object_set_visible(obj_npcs_main_parent, true);
			object_set_visible(obj_npcs_ruins_parent, true);
			
			//Objects Visible or not.
			object_set_visible(obj_object_main_parent, true);
			object_set_visible(obj_object_ruins_parent, true);
			
			//NPCs has hitbox or not.
			global.can_move_in_main_npcs = false;
			global.can_move_in_ruins_npcs = false;
			
			//Objects has hitbox or not.
			global.can_move_in_main_objects = false;
			global.can_move_in_ruins_object = false;
		}
	break
}


//Snowdin
switch(room){
	case rm_snowdin_1:
	case rm_snowdin_2:
	case rm_snowdin_3:
	case rm_snowdin_4:
	case rm_snowdin_5:
	case rm_snowdin_6:
	case rm_snowdin_7:
	case rm_snowdin_8:
	case rm_snowdin_9:
	case rm_snowdin_10:
	case rm_snowdin_11:
	case rm_snowdin_12:
	case rm_snowdin_13:
	case rm_snowdin_14:
	case rm_snowdin_15:
	case rm_snowdin_16:
	case rm_snowdin_17:
	case rm_snowdin_18:
	case rm_snowdin_19:
	case rm_snowdin_20:
	case rm_snowdin_21:
	case rm_snowdin_22:
	case rm_snowdin_23:
	case rm_snowdin_24:
	case rm_snowdin_25:
	case rm_snowdin_26:
	case rm_snowdin_27:
	case rm_snowdin_28:
	case rm_snowdin_29:
	case rm_snowdin_30:
	case rm_snowdin_31:
	case rm_snowdin_32:
	case rm_snowdin_33:
	case rm_snowdin_34_work_on_progress:
	case rm_snowdin_35:
	case rm_snowdin_36:
	case rm_snowdin_37:
	case rm_snowdin_38:
	case rm_snowdin_39:
	case rm_snowdin_40:
	case rm_snowdin_41:
	case rm_snowdin_42:
	case rm_snowdin_43:
	case rm_snowdin_44:
		if global.Snowdin_Genocide = true{
			
			
			//NPCs Visible or not.
			object_set_visible(obj_npcs_main_parent, false);
			object_set_visible(obj_npcs_snowdin_parent, false);
			
			//Objects Visible or not.
			object_set_visible(obj_object_main_parent, false);
			object_set_visible(obj_object_snowdin_parent, false);
			
			//NPCs has hitbox or not.
			global.can_move_in_main_npcs = true;
			global.can_move_in_snowdin_npcs = true;
			
			//Objects has hitbox or not.
			global.can_move_in_main_objects = false;
			global.can_move_in_snowdin_object = true;
			
			
			}else if global.Snowdin_Neutral = true{
			
				
			//NPCs Visible or not.
			object_set_visible(obj_npcs_main_parent, true);
			object_set_visible(obj_npcs_snowdin_parent, true);
			
			//Objects Visible or not.
			object_set_visible(obj_object_main_parent, true);
			object_set_visible(obj_object_snowdin_parent, true);
			
			//NPCs has hitbox or not.
			global.can_move_in_main_npcs = false;
			global.can_move_in_snowdin_npcs = false;
			
			//Objects has hitbox or not.
			global.can_move_in_main_objects = false;
			global.can_move_in_snowdin_object = false;
			}else if global.Snowdin_Pacifist = true{
			}else if global.Snowdin_True_Pacifist = true{
		}
	break
}