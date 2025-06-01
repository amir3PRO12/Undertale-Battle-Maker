function scr_check_skip(){
	draw_chara_temp = draw_chara+1
	symbols_number = 6
	if string_copy(text_to_draw,draw_chara_temp,symbols_number) = "_skip:"
	{
	i = symbols_number
	chara_temp = ""
	while chara_temp != ";" //or i <= symbols_number+1  //You can put any symbol you want here !WARNING! if you didn't put that symbol after face:yourface then game will crash!
	{
	chara_temp = string_copy(text_to_draw,draw_chara_temp+i,1)
	i++
	} 
	a = real(string_copy(text_to_draw,draw_chara_temp+symbols_number,i-symbols_number-1))
	if a = 0
	{
	can_skip = 0 
	}
	if a = 1
	{
	can_skip = 1
	}
	if a = 2
	{
	auto_skip = 0
	}
	if a = 3
	{
	auto_skip = 1
	}
	draw_chara--
	text_to_draw = string_delete(text_to_draw,draw_chara_temp,i)
	text_length_temp-= i
}

}