if mouse_inside > 0
{
mouse_inside -= 1
instance_create_depth(x,y+8,4,obj_maus_run)
audio_stop_sound(snd_quake)
alarm[6] = 5
}
else
audio_play_sound(mus_ruins,10,1)