if room == rm_museum{
	walking_in = false;
	incontrol = true;
	audio_stop_all();
	audio_play_sound(placeholder_music6, 1, true);
	audio_sound_gain(placeholder_music6, 0, 0);
	audio_sound_gain(placeholder_music6, 1, 1000);
}

if room == rm_museum2{
	walking_in = false;
	incontrol = true;
	if music.song_played{
		audio_stop_all();
		audio_play_sound(placeholder_music6, 1, true);
		audio_sound_gain(placeholder_music6, 0, 0);
		audio_sound_gain(placeholder_music6, 1, 1000);
	}
}