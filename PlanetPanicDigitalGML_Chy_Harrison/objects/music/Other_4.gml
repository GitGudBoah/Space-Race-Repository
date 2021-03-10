if room = Menu
{
	if reset_bg = true
	{
		audio_stop_all();
		audio_play_sound(snd_space_race_intro, 1, true);
	}
	reset_bg = true;
}
if room = Controls
{
	reset_bg = false;
}
if room = Victory
{
	audio_stop_all();
	audio_play_sound(snd_space_race_intro, 1, true);
	reset_bg = false;
}
if room = Game_Over
{
	audio_stop_all();
	audio_play_sound(snd_space_race_intro, 1, true);
	reset_bg = false;
}
if room = rm_enemy
{
	audio_stop_all();
}