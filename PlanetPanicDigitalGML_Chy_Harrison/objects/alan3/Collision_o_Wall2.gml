if room = rm_xenom{
	//fade to black - transition to next room
	if canTrigger{
		canTrigger = false;
		var inst = instance_create_depth(0, 0, -999, fader);
		inst.destination_room = rm_xenom2;
		inst.fadein_speed = 0.2;
		inst.fadeout_speed = 0.2;
		inst.room_swap_delay = 0.2;
	}
}

if room = rm_xenom2{
	//fade to black - transition to next room
	if canTrigger{
		canTrigger = false;
		var inst = instance_create_depth(0, 0, -999, fader);
		inst.destination_room = rm_xenom3;
		inst.fadein_speed = 0.2;
		inst.fadeout_speed = 0.2;
		inst.room_swap_delay = 0.2;
	}
}

if room = rm_hal9{
	//fade to black - transition to next room
	if canTrigger{
		canTrigger = false;
		var inst = instance_create_depth(0, 0, -999, fader);
		inst.destination_room = rm_hal9_2;
		inst.fadein_speed = 0.2;
		inst.fadeout_speed = 0.2;
		inst.room_swap_delay = 0.2;
		audio_sound_gain(placeholder_music10, 0, 1000);
	}
}