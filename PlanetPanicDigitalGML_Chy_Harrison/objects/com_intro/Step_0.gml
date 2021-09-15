//Attis gate
if counter = 1{
	speaker = spr_com_blank;
	text = "The entrance gate to Attis suddenly closes.";
	if canTrigger{
		canTrigger = false;
		audio_sound_gain(placeholder_music0, 0, 2000);
		audio_play_sound(placeholder_music_intro, 1, true);
	}
}

if counter = 2{
	speaker = spr_com_kandar;
	text = "[Appears and challenges Alan to a rematch]";
}

//decision
if counter = 3{
	speaker = spr_com_kandar;
	text = "[Appears and challenges Alan to a rematch]";
	decision = true;
}

if counter = 4{
	if choice = false{
		speaker = spr_com_alan;
		text = "I warned you not to show your face here again, Kandar. Let's settle this once and for all!";
	} else{
		speaker = spr_com_alan;
		text = "Not now, Kandar... I'm busy.";
	}
	decision = false;
}
//

if counter = 5{
	speaker = spr_com_kandar;
	text = "[Commands assault on Alan's ship]";
}

if counter = 6{
	counter = 0;
	if choice = false{
		intro_spawner.challenged = true;
	}
	intro_spawner.alarm[0] = true;
	talking = false;
	player.incontrol = true;
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