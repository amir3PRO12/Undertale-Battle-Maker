function scr_check_scripts(){
	draw_chara_temp = draw_chara+1
	if string_copy(text_to_draw,draw_chara_temp,4) = "scr:"
	{
	i = 4
	chara_temp = ""
	while chara_temp != ";" //You can put any symbol you want here !WARNING! if you didn't put that symbol after txt_speed:yourspeed then game will crash!
	{
	chara_temp = string_copy(text_to_draw,draw_chara_temp+i,1)
	i++
	}
	a = asset_get_index(string_copy(text_to_draw,draw_chara_temp+4,i-5))
	script_execute(a) 
	text_to_draw = string_delete(text_to_draw,draw_chara_temp,i)
	text_length_temp-= i
}

}