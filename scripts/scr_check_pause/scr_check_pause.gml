function scr_check_pause(){
	draw_chara_temp = draw_chara+1
	symbols_number = 7
	if string_copy(text_to_draw,draw_chara_temp,symbols_number) = "_pause:"
	{
	i = symbols_number
	chara_temp = ""
	while chara_temp != ";" //or i <= symbols_number+1  //You can put any symbol you want here !WARNING! if you didn't put that symbol after face:yourface then game will crash!
	{
	chara_temp = string_copy(text_to_draw,draw_chara_temp+i,1)
	i++
	} 
	temp_pause = real(string_copy(text_to_draw,draw_chara_temp+symbols_number,i-symbols_number-1))
	//draw_chara--
	text_to_draw = string_delete(text_to_draw,draw_chara_temp,i)
	text_length_temp-= i
}

}