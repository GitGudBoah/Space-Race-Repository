//cultist

if counter = 1{
	speaker = spr_com_believer;
	text = "The pathways are being opened in the basement- descend these steps and spare my life!";
}

if counter = 2{
	speaker = spr_com_blank;
	text = "Your crew descends into the basement of the museum.";
}

if counter = 3{
	counter = 0;
	talking = false;
	var inst = instance_create_depth(0, 0, -999, fader);
	inst.destination_room = black_screen4;
	inst.fadein_speed = 0.2;
	inst.fadeout_speed = 0.2;
	inst.room_swap_delay = 0.2;
	audio_sound_gain(snd_space_race_intro, 0, 2000);
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