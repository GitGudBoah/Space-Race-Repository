//access Hal-9
if music.stations = 0{
	if counter = 1{
		speaker = spr_com_blank;
		text = "The path to Hal-9 is blocked off by police.";
	}
	
	if counter = 2{
		speaker = spr_com_glaucus;
		text = "There must be criminal activity at hand.";
	}
	
	if counter = 3{
		speaker = spr_com_alan;
		text = "We won't be able to get through any time soon.";
	}
	
	if counter = 4{
		counter = 0;
		talking = false;
		player.incontrol = true;
		hal_9.available = true;
	}
} else{
	if counter = 1{
		speaker = spr_com_blank;
		text = "Head to Hal-9?";
		choice = false;
	}

	//decision
	if counter = 2{
		speaker = spr_com_blank;
		text = "Head to Hal-9?";
		decision = true;
	}

	if counter = 3{
		if choice = false{
			counter = 0;
			talking = false;
			var inst = instance_create_depth(0, 0, -999, fader);
			inst.destination_room = rm_hal9;
			inst.fadein_speed = 0.0075;
			inst.fadeout_speed = 0.02;
			inst.room_swap_delay = 2;
			audio_sound_gain(placeholder_music7, 0, 2000);
		} else{
			counter = 0;
			talking = false;
			player.incontrol = true;
			hal_9.available = true;
		}
		decision = false;
	}
	//
}

//decision: choosing
if decision{
	if keyboard_check_pressed(ord("D")){
		choice = true;
	}

	if keyboard_check_pressed(ord("A")){
		choice = false;
	}
}