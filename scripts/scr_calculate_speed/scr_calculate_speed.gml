function scr_calculate_txt_speed(){
	draw_chara_temp = draw_chara+1
	if string_copy(text_to_draw,draw_chara_temp,10) = "txt_speed:"
	{
	i = 10
	chara_temp = ""
	while chara_temp != ";" //You can put any symbol you want here !WARNING! if you didn't put that symbol after txt_speed:yourspeed then game will crash!
	{
	chara_temp = string_copy(text_to_draw,draw_chara_temp+i,1)
	i++
	}
	text_spd = real(string_copy(text_to_draw,draw_chara_temp+10,i-11))
	text_to_draw = string_delete(text_to_draw,draw_chara_temp,i)
	text_length_temp-= i
	}
}