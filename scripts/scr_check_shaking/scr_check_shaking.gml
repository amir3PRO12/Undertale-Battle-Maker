function scr_check_shaking(){
	draw_chara_temp = draw_chara+1
	syntax = "_shaking:" 
	symbols_number = string_length(syntax)
	if string_copy(text_to_draw,draw_chara_temp,symbols_number) = syntax
	{// SHAKING TEXT REQUIRES \n FOR NEW LINES!!(or it goes out of bounds)
	i = symbols_number
	chara_temp = ""
	while chara_temp != ";" //or i <= symbols_number+1  //You can put any symbol you want here !WARNING! if you didn't put that symbol after face:yourface then game will crash!
	{
	chara_temp = string_copy(text_to_draw,draw_chara_temp+i,1)
	i++
	} 
	shake_intensity = real(string_copy(text_to_draw,draw_chara_temp+symbols_number,i-symbols_number-1))
	if shake_intensity > 0
	is_shaking = 1
	else
	is_shaking = 0
	draw_chara--
	text_to_draw = string_delete(text_to_draw,draw_chara_temp,i)
	text_length_temp-= i
return 1
}
else
	return 0

}