// Quick reload
if image_blend = c_red{
	alarm[2] = false;
	alarm[3] = false;
	audio_play_sound(snd_explosion_small, 1, false);
	reload_buff = true;
	firerate = 0.12;
	image_blend = c_white;
	ammo = ammo_max;
	reloading = false;
}