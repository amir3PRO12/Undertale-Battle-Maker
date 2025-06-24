if about_to_exlpode > 0
about_to_exlpode -= 1
if about_to_exlpode > 50
{image_xscale += 0.1
image_yscale += 0.1}
if image_xscale > 2.5
image_angle += 18
if image_xscale > 5
{instance_destroy()
audio_play_sound(snd_mouse_squeak,100,0,1,undefined,0.5)}