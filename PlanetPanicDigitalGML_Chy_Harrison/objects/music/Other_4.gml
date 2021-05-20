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

if room = scene1
{
	//fade in bg music
	audio_stop_all();
	audio_play_sound(placeholder_music0, 1, true);
	audio_sound_gain(placeholder_music0, 0, 0);
	audio_sound_gain(placeholder_music0, 1, 1000);
}

if room = scene3
{
	//fade in bg music
	audio_stop_all();
	audio_play_sound(placeholder_music1, 1, true);
	audio_sound_gain(placeholder_music1, 0, 0);
	audio_sound_gain(placeholder_music1, 1, 1000);
}

if room = rm_enemy
{
	audio_stop_all();
	audio_play_sound(snd_space, 1, true);
	audio_sound_gain(snd_space, 0, 0);
	audio_sound_gain(snd_space, 1, 1000);
	//reset_bg = false;
}

if room = scene8
{
	audio_stop_all();
}

if room = scene9
{
	//fade in bg music
	audio_stop_all();
	audio_play_sound(placeholder_music, 1, true);
	audio_sound_gain(placeholder_music, 0, 0);
	audio_sound_gain(placeholder_music, 1, 1000);
	//reset_bg = false;
}