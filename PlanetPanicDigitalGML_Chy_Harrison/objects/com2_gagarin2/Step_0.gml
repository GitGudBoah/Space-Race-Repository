//enter the gagarin drone 2

if counter = 1{
	speaker = spr_com_alan;
	text = "I'm still coming with you. *cough*";
	if canTrigger{
		canTrigger = false;
		alan.move = true;
	}
}

if counter = 2{
	speaker = spr_com_demeter;
	text = "Damn, you're stubborn.";
}

if counter = 3{
	speaker = spr_com_alan;
	text = "If something happens to the two of you while I'm not there, it would fall on my shoulders.";
	if canTrigger2{
		canTrigger2 = false;
		audio_sound_gain(placeholder_music4, 0, 2000);
	}
}

if counter = 4{
	speaker = spr_com_jay;
	text = "Suit yourself. Let's go.";
}

if counter = 5{
	audio_stop_all();
	room_goto(rm_wailing);
}