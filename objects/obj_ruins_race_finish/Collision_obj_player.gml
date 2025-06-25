if is_active
{
is_active = 0
audio_play_sound(snd_win,100,0,1,undefined,0.66)
audio_stop_sound(mus_race)
obj_ruins_npc_froggit_race2.descr_text = "froggit_long_room2_race_end"
obj_ruins_npc_froggit_race2.book_switch = 0
obj_ruins_npc_froggit_race2.book_switch_max = 2
obj_ruins_npc_froggit_race1.descr_text = "froggit_long_room1_start_race"
obj_ruins_npc_froggit_race1.book_switch = 0
obj_ruins_npc_froggit_race1.book_switch_max = 0
alarm[1] = 75
}