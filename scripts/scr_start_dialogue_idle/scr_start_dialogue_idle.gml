function scr_start_dialogue_idle(Library,Book,Text_lib_part,Text_speed=0.5,Voice=voice_test,Face=spr_nosprite,
Font = fon_determination_sans_web, Color = c_white,
Can_Walk=0,Can_skip=1,Auto_skip=0,
Is_shaking = 0,
	Shake_intensity = 0,
	Is_waving = 0,
	Wave_speed_x = 0,
	Wave_shortness_x = 0,
	Wave_intensity_x = 0,
	Wave_intensity_y = 0,
	Wave_speed_y = 0,
	Wave_shortness_y = 0,)
	{
	
	library = Library 
	book = Book // Launch book 0 first time, on second time script changes the debug_book_switch to 1, so we launch book 1
	book_number = array_length(library[$ Text_lib_part])
	text = library[$ Text_lib_part][book]
	text_spd = Text_speed
	current_voice = Voice
	dialogue_face_sprite = Face
	in_dialogue = true
	
	can_walk_while_dialogue = Can_Walk
	text_color = Color
	can_skip = Can_skip 
	auto_skip = Auto_skip
	is_shaking = Is_shaking
	shake_intensity = Shake_intensity
	is_waving = Is_waving
	wave_speed_x = Wave_speed_x
	wave_shortness_x = Wave_shortness_x
	wave_intensity_x = Wave_intensity_x
	wave_intensity_y = Wave_intensity_y
	wave_speed_y = Wave_speed_y
	wave_shortness_y = Wave_shortness_y

}