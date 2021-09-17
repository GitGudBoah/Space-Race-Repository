if room == rm_level3{
	rm1 = false;
}

if room == chamber1_1{
	audio_play_sound(placeholder_music12, 2, true);
	//spawner_chamber1_1.alarm[0] = room_speed * 1;
}

if room == blackhole_city{
	//don't replay room_start events after returning from menu system
	if global.current_room = blackhole_city{
		//do nothing
	} else{
		audio_play_sound(placeholder_music13, 2, true);
	}
}

//unmark room_persistent after returning from menu system
room_persistent = false;