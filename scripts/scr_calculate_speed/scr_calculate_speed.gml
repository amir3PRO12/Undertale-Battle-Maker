function scr_calculate_txt_speed(){
	draw_chara_temp = draw_chara+1
	syntax = "txt_speed:" 
	symbols_number = string_length(syntax)
	if string_copy(text_to_draw,draw_chara_temp,symbols_number) = syntax
	{
	i = symbols_number
	chara_temp = ""
	while chara_temp != ";" //or i <= symbols_number+1 //You can put any symbol you want here !WARNING! if you didn't put that symbol after txt_speed:yourspeed then game will crash!
	{
	chara_temp = string_copy(text_to_draw,draw_chara_temp+i,1)
	i++
	}
	text_spd = real(string_copy(text_to_draw,draw_chara_temp+symbols_number,i-symbols_number-1))
	draw_chara--
	text_to_draw = string_delete(text_to_draw,draw_chara_temp,i)
	text_length_temp-= i
	return 1
}
else
	return 0
}