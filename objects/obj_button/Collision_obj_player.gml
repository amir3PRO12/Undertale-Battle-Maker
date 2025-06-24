if !is_pressed
{
Pressed_by_player() 
audio_play_sound(snd_chap,10,0)
is_pressed = 1
sprite_index = spr_button_pressed
}
alarm[1] = 2