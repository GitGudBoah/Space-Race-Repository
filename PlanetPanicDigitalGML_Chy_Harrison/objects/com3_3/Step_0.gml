//access Xenom

if counter = 1{
	speaker = spr_com_blank;
	text = "Head to Xenom?";
	choice = false;
}

//decision
if counter = 2{
	speaker = spr_com_blank;
	text = "Head to Xenom?";
	decision = true;
}

if counter = 3{
	if choice = false{
		counter = 0;
		talking = false;
		var inst = instance_create_depth(0, 0, -999, fader);
		inst.destination_room = rm_xenom;
		inst.fadein_speed = 0.0075;
		inst.fadeout_speed = 0.02;
		inst.room_swap_delay = 2;
		audio_sound_gain(placeholder_music7, 0, 2000);
	} else{
		counter = 0;
		talking = false;
		player.incontrol = true;
		xenom.available = true;
	}
	decision = false;
}
//

//decision: choosing
if decision{
	if keyboard_check_pressed(ord("D")){
		choice = true;
	}

	if keyboard_check_pressed(ord("A")){
		choice = false;
	}
}