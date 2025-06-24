function scr_check_waving_x(){
	draw_chara_temp = draw_chara+1
	syntax = "_wavingx:" 
	symbols_number = string_length(syntax)
	if string_copy(text_to_draw,draw_chara_temp,symbols_number) = syntax
	{//just like this:  _waving:intensity,shrotness,speed;  just like that:  _waving:2,90,0.5; 
	i = symbols_number
	chara_temp = ""
	while chara_temp != "," //or i <= symbols_number+1  //You can put any symbol you want here !WARNING! if you didn't put that symbol after face:yourface then game will crash!
	{
	chara_temp = string_copy(text_to_draw,draw_chara_temp+i,1)
	i++
	} 
	wave_intensity_x = real(string_copy(text_to_draw,draw_chara_temp+symbols_number,i-symbols_number-1))
	
	symbols_number = i
	chara_temp = ""
	while chara_temp != "," //or i <= symbols_number+1  //You can put any symbol you want here !WARNING! if you didn't put that symbol after face:yourface then game will crash!
	{
	chara_temp = string_copy(text_to_draw,draw_chara_temp+i,1)
	i++
	} 
	wave_shortness_x = real(string_copy(text_to_draw,draw_chara_temp+symbols_number,i-symbols_number-1))
	
	symbols_number = i
	chara_temp = ""
	while chara_temp != ";" //or i <= symbols_number+1  //You can put any symbol you want here !WARNING! if you didn't put that symbol after face:yourface then game will crash!
	{
	chara_temp = string_copy(text_to_draw,draw_chara_temp+i,1)
	i++
	} 
	wave_speed_x = real(string_copy(text_to_draw,draw_chara_temp+symbols_number,i-symbols_number-1))
	
	if wave_intensity_x > 0 
	is_waving = 1
	else
	is_waving = 0
	draw_chara--
	text_to_draw = string_delete(text_to_draw,draw_chara_temp,i)
	text_length_temp-= i
	return 1
}
else
	return 0
}