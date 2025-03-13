//Musics In Different Rooms



//Ruins
switch(room){
//Ruins Entrance!
case rm_ruins_entrance:
case rm_ruins_entrance_1:
if global.Ruins_Genocide == true{
	if !audio_is_playing(mus_silence){
		audio_stop_all();
		audio_play_sound(mus_silence, 100, true, 1, 0, 1);
	}
}else if global.Ruins_Pacifist{
	if !audio_is_playing(mus_silence){
		audio_stop_all();
		audio_play_sound(mus_silence, 100, true, 1, 0, 1);
	}
}else if global.Ruins_True_Pacifist == true{
	if !audio_is_playing(mus_reunited){
		audio_stop_all();
		audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
	}
}else if global.Ruins_Neutral == true{
	if !audio_is_playing(mus_silence){
		audio_stop_all();
		audio_play_sound(mus_silence, 100, true, 1, 0, 1);	
	}
}
break

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
if global.Ruins_Genocide == true{
	if !audio_is_playing(mus_ruins_toomuch){
		audio_stop_all();
		audio_play_sound(mus_ruins_toomuch, 100, true, 1, 0, 1);	
	}
}else if global.Ruins_Pacifist{
	if !audio_is_playing(mus_ruins){
		audio_stop_all();
		audio_play_sound(mus_ruins, 100, true, 1, 0, 1);
	}
}else if global.Ruins_True_Pacifist == true{
	if !audio_is_playing(mus_reunited){
		audio_stop_all();
		audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
	}
}else if global.Ruins_Neutral == true{
	if !audio_is_playing(mus_ruins){
		audio_stop_all();
		audio_play_sound(mus_ruins, 100, true, 1, 0, 1);
	}
}
break

//Ruins Home.
case rm_ruins_28:
case rm_ruins_29:
case rm_ruins_30:
case rm_ruins_31:
case rm_ruins_33:
if global.Ruins_Genocide == true{
	if !audio_is_playing(mus_fallendown_toomuch){
		audio_stop_all();
		audio_play_sound(mus_fallendown_toomuch, 100, true, 1, 0, 1);
	}
}else if global.Ruins_Pacifist{
	if !audio_is_playing(mus_home){
		audio_stop_all();
		audio_play_sound(mus_home, 100, true, 1, 0, 1);
	}
}else if global.Ruins_True_Pacifist == true{
	if !audio_is_playing(mus_reunited){
		audio_stop_all();
		audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
	}
}else if global.Ruins_Neutral == true{
	if !audio_is_playing(mus_home){
		audio_stop_all();
		audio_play_sound(mus_home, 100, true, 1, 0, 1);
	}
}else if global.Toriel_Dead == true{
	if !audio_is_playing(mus_fallendown_toomuch){
		audio_stop_all();
		audio_play_sound(mus_fallendown_toomuch, 100, true, 1, 0, 1);
	}
}
break
//Ruins Home, Your Room!
case rm_ruins_32:
if global.Ruins_Genocide == true{
	if !audio_is_playing(mus_silence){
		audio_stop_all();
		audio_play_sound(mus_silence, 100, true, 1, 0, 1);
	}
}else if global.Ruins_Pacifist{
	if !audio_is_playing(mus_home){
		audio_stop_all();
		audio_play_sound(mus_home, 100, true, 1, 0, 1);
	}
}else if global.Ruins_True_Pacifist == true{
	if !audio_is_playing(mus_reunited){
		audio_stop_all();
		audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
	}
}else if global.Ruins_Neutral == true{
	if !audio_is_playing(mus_home){
		audio_stop_all();
		audio_play_sound(mus_home, 100, true, 1, 0, 1);
	}
}else if global.Toriel_Dead == true{
	if !audio_is_playing(mus_silence){
		audio_stop_all();
		audio_play_sound(mus_silence, 100, true, 1, 0, 1);
	}
}

break
//Ruins Toriel's Basement I think...??
case rm_ruins_34:
case rm_ruins_35:
case rm_ruins_36:
if global.Ruins_Genocide == true{
	if !audio_is_playing(mus_toriel_basement){
		audio_stop_all();
		audio_play_sound(mus_toriel_basement, 100, true, 1, 0, 1);
	}
}else if global.Ruins_Pacifist{
	if !audio_is_playing(mus_toriel_basement){
		audio_stop_all();
		audio_play_sound(mus_toriel_basement, 100, true, 1, 0, 1);
	}
}else if global.Ruins_True_Pacifist == true{
	if !audio_is_playing(mus_reunited){
		audio_stop_all();
		audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
	}
}else if global.Ruins_Neutral == true{
	if !audio_is_playing(mus_toriel_basement){
		audio_stop_all();
		audio_play_sound(mus_toriel_basement, 100, true, 1, 0, 1);
	}
}else if global.Toriel_Dead == true{
	if !audio_is_playing(mus_silence){
		audio_stop_all();
		audio_play_sound(mus_silence, 100, true, 1, 0, 1);
	}
}
break
//Ruins Toriel's Basement Fighting Area!!
case rm_ruins_37:
if global.Ruins_Genocide == true{
	if !audio_is_playing(mus_toriel_basement){
		audio_stop_all();
		audio_play_sound(mus_toriel_basement, 100, true, 1, 0, 1);
	}
}else if global.Ruins_Pacifist{
	if !audio_is_playing(mus_silence){
		audio_stop_all();
		audio_play_sound(mus_silence, 100, true, 1, 0, 1);
	}
}else if global.Ruins_True_Pacifist == true{
	if !audio_is_playing(mus_reunited){
		audio_stop_all();
		audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
	}
}else if global.Ruins_Neutral == true{
	if !audio_is_playing(mus_toriel_basement){
		audio_stop_all();
		audio_play_sound(mus_toriel_basement, 100, true, 1, 0, 1);
	}
}else if global.Toriel_Dead == true{
	if !audio_is_playing(mus_silence){
		audio_stop_all();
		audio_play_sound(mus_silence, 100, true, 1, 0, 1);
	}
}

break

//The End Of The Ruins.
case rm_ruins_38:
case rm_ruins_39:
if global.Ruins_Genocide == true{
	if !audio_is_playing(mus_silence){
		audio_stop_all();
		audio_play_sound(mus_silence, 100, true, 1, 0, 1);
	}
}else if global.Ruins_Pacifist{
	if !audio_is_playing(mus_silence){
		audio_stop_all();
		audio_play_sound(mus_silence, 100, true, 1, 0, 1);
	}
}else if global.Ruins_True_Pacifist == true{
	if !audio_is_playing(mus_reunited){
		audio_stop_all();
		audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
	}
}else if global.Ruins_Neutral == true{
	if !audio_is_playing(mus_silence){
		audio_stop_all();
		audio_play_sound(mus_silence, 100, true, 1, 0, 1);
	}
}else if global.Toriel_Dead == true{
	if !audio_is_playing(mus_silence){
		audio_stop_all();
		audio_play_sound(mus_silence, 100, true, 1, 0, 1);
	}
}else if global.Toriel_Spared == true{
	if !audio_is_playing(mus_silence){
		audio_stop_all();
		audio_play_sound(mus_silence, 100, true, 1, 0, 1);
	}
}

break
//Ruins Temmie Room!!
case rm_ruins_40:
	if global.Ruins_Genocide == true{
	if !audio_is_playing(mus_temvillage_toomuch){
		audio_stop_all();
		audio_play_sound(mus_temvillage_toomuch, 100, true, 1, 0, 1);
	}
}else if global.Ruins_Pacifist{
	if !audio_is_playing(mus_temvillage){
		audio_stop_all();
		audio_play_sound(mus_temvillage, 100, true, 1, 0, 1);
	}
}else if global.Ruins_True_Pacifist == true{
	if !audio_is_playing(mus_reunited){
		audio_stop_all();
		audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
	}
}else if global.Ruins_Neutral == true{
	if !audio_is_playing(mus_temvillage){
		audio_stop_all();
		audio_play_sound(mus_temvillage, 100, true, 1, 0, 1);
	}
}else if global.Toriel_Dead == true{
	if !audio_is_playing(mus_temvillage){
		audio_stop_all();
		audio_play_sound(mus_temvillage, 100, true, 1, 0, 1);
	}
}else if global.Toriel_Spared == true{
	if !audio_is_playing(mus_temvillage){
		audio_stop_all();
		audio_play_sound(mus_temvillage, 100, true, 1, 0, 1);
	}
}
break
}
	
	
//Snowdin
switch(room){
	case rm_snowdin_entrance:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_snowdin_sans_following_you){
			audio_stop_all();
			audio_play_sound(mus_snowdin_sans_following_you, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_snowdin_sans_following_you){
			audio_stop_all();
			audio_play_sound(mus_snowdin_sans_following_you, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_snowdin_sans_following_you){
			audio_stop_all();
			audio_play_sound(mus_snowdin_sans_following_you, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_1:
	case rm_snowdin_2:
	case rm_snowdin_3:
	case rm_snowdin_4:
	case rm_snowdin_5:
	case rm_snowdin_6:
	case rm_snowdin_7:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 0.5);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_8:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_toomuch){
			audio_stop_all();
			audio_play_sound(mus_toomuch, 100, true, 1, 0, 0.5);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_9:
	case rm_snowdin_10:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 0.5);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_11:
	case rm_snowdin_12:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_toomuch){
			audio_stop_all();
			audio_play_sound(mus_toomuch, 100, true, 1, 0, 0.5);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_13:
	case rm_snowdin_14:
	case rm_snowdin_15:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 0.5);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_16:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_toomuch){
			audio_stop_all();
			audio_play_sound(mus_toomuch, 100, true, 1, 0, 0.5);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_17:
	case rm_snowdin_18:
	case rm_snowdin_19:
	case rm_snowdin_20:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 0.5);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_21:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_mystery){
			audio_stop_all();
			audio_play_sound(mus_mystery, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_mystery){
			audio_stop_all();
			audio_play_sound(mus_mystery, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_mystery){
			audio_stop_all();
			audio_play_sound(mus_mystery, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_22:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_dogroom){
			audio_stop_all();
			audio_play_sound(mus_dogroom, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_dogroom){
			audio_stop_all();
			audio_play_sound(mus_dogroom, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_dogroom){
			audio_stop_all();
			audio_play_sound(mus_dogroom, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_dogroom){
			audio_stop_all();
			audio_play_sound(mus_dogroom, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_23:
	case rm_snowdin_24:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 0.5);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_snowy){
			audio_stop_all();
			audio_play_sound(mus_snowy, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_25:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_town){
			audio_stop_all();
			audio_play_sound(mus_town, 100, true, 1, 0, 0.3);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_town){
			audio_stop_all();
			audio_play_sound(mus_town, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_town){
			audio_stop_all();
			audio_play_sound(mus_town, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_26:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_toomuch){
			audio_stop_all();
			audio_play_sound(mus_toomuch, 100, true, 1, 0, 0.5);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_silence){
			audio_stop_all();
			audio_play_sound(mus_silence, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_silence){
			audio_stop_all();
			audio_play_sound(mus_silence, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_27:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_town){
			audio_stop_all();
			audio_play_sound(mus_town, 100, true, 1, 0, 0.3);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_town){
			audio_stop_all();
			audio_play_sound(mus_town, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_town){
			audio_stop_all();
			audio_play_sound(mus_town, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_28:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_toomuch){
			audio_stop_all();
			audio_play_sound(mus_toomuch, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_silence){
			audio_stop_all();
			audio_play_sound(mus_silence, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_silence){
			audio_stop_all();
			audio_play_sound(mus_silence, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_29:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_sans){
			audio_stop_all();
			audio_play_sound(mus_sans, 100, true, 1, 0, 0.5);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_sans){
			audio_stop_all();
			audio_play_sound(mus_sans, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_sans){
			audio_stop_all();
			audio_play_sound(mus_sans, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_30:
	case rm_snowdin_31:
	case rm_snowdin_32:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_town){
			audio_stop_all();
			audio_play_sound(mus_town, 100, true, 1, 0, 0.3);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_town){
			audio_stop_all();
			audio_play_sound(mus_town, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_town){
			audio_stop_all();
			audio_play_sound(mus_town, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_33:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_toomuch){
			audio_stop_all();
			audio_play_sound(mus_toomuch, 100, true, 1, 0, 0.5);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_silence){
			audio_stop_all();
			audio_play_sound(mus_silence, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_silence){
			audio_stop_all();
			audio_play_sound(mus_silence, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_35:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_toomuch){
			audio_stop_all();
			audio_play_sound(mus_toomuch, 100, true, 1, 0, 0.5);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_papyrus){
			audio_stop_all();
			audio_play_sound(mus_papyrus, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_papyrus){
			audio_stop_all();
			audio_play_sound(mus_papyrus, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_36:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_toomuch){
			audio_stop_all();
			audio_play_sound(mus_toomuch, 100, true, 1, 0, 0.5);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_sans){
			audio_stop_all();
			audio_play_sound(mus_sans, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_sans){
			audio_stop_all();
			audio_play_sound(mus_sans, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_37:
	case rm_snowdin_38:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_toomuch){
			audio_stop_all();
			audio_play_sound(mus_toomuch, 100, true, 1, 0, 0.5);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_sans){
			audio_stop_all();
			audio_play_sound(mus_sans, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_sans){
			audio_stop_all();
			audio_play_sound(mus_sans, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_39:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_mystery){
			audio_stop_all();
			audio_play_sound(mus_mystery, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_mystery){
			audio_stop_all();
			audio_play_sound(mus_mystery, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_mystery){
			audio_stop_all();
			audio_play_sound(mus_mystery, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_40:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_toomuch){
			audio_stop_all();
			audio_play_sound(mus_toomuch, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_dog_shrine_2){
			audio_stop_all();
			audio_play_sound(mus_dog_shrine_2, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_dog_shrine_1){
			audio_stop_all();
			audio_play_sound(mus_dog_shrine_1, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_41:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_toomuch){
			audio_stop_all();
			audio_play_sound(mus_toomuch, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_silence){
			audio_stop_all();
			audio_play_sound(mus_silence, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_silence){
			audio_stop_all();
			audio_play_sound(mus_silence, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_42:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_toomuch){
			audio_stop_all();
			audio_play_sound(mus_toomuch, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_sans){
			audio_stop_all();
			audio_play_sound(mus_sans, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_sans){
			audio_stop_all();
			audio_play_sound(mus_sans, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_43:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_toomuch){
			audio_stop_all();
			audio_play_sound(mus_toomuch, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_silence){
			audio_stop_all();
			audio_play_sound(mus_silence, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_reunited){
			audio_stop_all();
			audio_play_sound(mus_reunited, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_silence){
			audio_stop_all();
			audio_play_sound(mus_silence, 100, true, 1, 0, 1);	
		}
	}
	break
	case rm_snowdin_44:
	if global.Snowdin_Genocide == true{
		if !audio_is_playing(mus_silence){
			audio_stop_all();
			audio_play_sound(mus_silence, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Pacifist{
		if !audio_is_playing(mus_silence){
			audio_stop_all();
			audio_play_sound(mus_silence, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_True_Pacifist == true{
		if !audio_is_playing(mus_silence){
			audio_stop_all();
			audio_play_sound(mus_silence, 100, true, 1, 0, 1);
		}
	}else if global.Snowdin_Neutral == true{
		if !audio_is_playing(mus_silence){
			audio_stop_all();
			audio_play_sound(mus_silence, 100, true, 1, 0, 1);	
		}
	}
	break
}