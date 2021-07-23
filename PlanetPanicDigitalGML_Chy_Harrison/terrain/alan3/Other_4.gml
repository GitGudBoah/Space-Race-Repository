if room = rm_xenom{
	pistol_reloading = true;
	audio_stop_all();
	audio_play_sound(placeholder_music8, 1, true);
}

if room = rm_xenom2{
	pistol_reloading = true;
	image_xscale = -1;
}

if room = rm_hal9{
	audio_stop_all();
	audio_sound_gain(placeholder_music6, 1, 0);
	audio_play_sound(placeholder_music10, 1, true);
}

if room = rm_hal9_2{
	audio_play_sound(snd_space_race_intro, 1, true);
}