if room == blackhole_city{
	//don't replay room_start events after returning from menu system
	if global.current_room = blackhole_city{
		//do nothing
	} else{
		audio_play_sound(placeholder_music13, 2, true);
	}
}

if room == open_space{
	//don't replay room_start events after returning from menu system
	if global.current_room = open_space{
		//do nothing
	} else{
		audio_stop_sound(placeholder_music13);
		audio_sound_gain(placeholder_music13, 1, 0);
		audio_play_sound(placeholder_music12, 2, true);
	}
}

//unmark room_persistent after returning from menu system
room_persistent = false;


//old work--
if room == rm_level3{
	rm1 = false;
}