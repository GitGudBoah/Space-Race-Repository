//music
if room = Menu
{
	if reset_bg = true
	{
		audio_stop_all();
		audio_play_sound(snd_space_race_intro, 1, true);
	}
	reset_bg = true;
	o_game.pausable = false;
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
	o_game.pausable = false;
}
if room = Game_Over
{
	audio_stop_all();
	audio_play_sound(snd_space_race_intro, 1, true);
	reset_bg = false;
	o_game.pausable = false;
}

if room = intro
{
	//don't replay room_start events after returning from menu system
	if global.current_room = intro{
		//do nothing
	} else{
		//fade in bg music
		audio_stop_all();
		audio_play_sound(placeholder_music0, 1, true);
		audio_sound_gain(placeholder_music0, 0, 0);
		audio_sound_gain(placeholder_music0, 0.5, 1000);
	}
}

if room = intro_cutscene
{
	audio_stop_all();
	audio_play_sound(placeholder_music11, 1, true);
}

if room = blackhole_city{
	//don't replay room_start events after returning from menu system
	if global.current_room = blackhole_city{
		//do nothing
	} else{
		audio_stop_all();
		audio_play_sound(placeholder_music13, 2, true);
	}
}

if room == open_space{
	//don't replay room_start events after returning from menu system
	if global.current_room = open_space{
		//do nothing
	} else{
		audio_stop_all();
		audio_sound_gain(placeholder_music13, 1, 0);
		audio_play_sound(placeholder_music12, 2, true);
	}
}


/// OLD WORK BELOW--
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
	audio_sound_gain(placeholder_music, 0.25, 1000);
	//reset_bg = false;
}

if cp3{
	if room = rm_forest2
	{
		audio_stop_all();
		audio_play_sound(placeholder_music3, 1, true);
	}
}
if cp4{
	if room = rm_forest3
	{
		audio_stop_all();
		audio_play_sound(placeholder_music1, 1, true);
	}	
}
if cp5{
	if room = rm_settlement
	{
		audio_stop_all();
		audio_play_sound(placeholder_music1, 1, true);
	}
}
if cp6{
	if room = rm_believer
	{
		audio_stop_all();
		audio_play_sound(placeholder_music1, 1, true);
	}	
}
if cp9{
	if room = rm_xenom2
	{
		audio_stop_all();
		audio_play_sound(placeholder_music8, 1, true);
	}	
}
if cp10{
	if room = rm_xenom3
	{
		audio_stop_all();
		audio_play_sound(placeholder_music8, 1, true);
	}	
}
if cp11{
	if room = beast_fight
	{
		audio_stop_all();
		audio_play_sound(placeholder_music9, 1, true);
	}	
}

//checkpoints
if room = rm_enemy{
	cp = false;
	cp1 = true;
}
if room = scene9{
	cp1 = false;
	cp2 = true;
}
if room = rm_forest2{
	cp2 = false;
	cp3 = true;
}
if room = rm_forest3{
	cp3 = false;
	cp4 = true;
}
if room = rm_settlement{
	cp4 = false;
	cp5 = true;
}
if room = rm_believer{
	cp5 = false;
	cp6 = true;
}
if room = rm_level3{
	cp6 = false;
	cp11 = false;
	cp12 = false;
	cp7 = true;
}
if room = rm_xenom{
	cp7 = false;
	cp8 = true;
}
if room = rm_xenom2{
	cp8 = false;
	cp9 = true;
}
if room = rm_xenom3{
	cp9 = false;
	cp10 = true;
}
if room = beast_fight{
	cp10 = false;
	cp11 = true;
}
if room = rm_hal9_2{
	cp7 = false;
	cp12 = true;
}