//jay and believer
if enemy_manager3.game_over = false{
	if alan3.x <= 12150 && counter = 0{
		counter = 1;
		alan3.incontrol = false;
		talking = true;
	}
}

if counter = 1{
	speaker = spr_com_blank;
	text = "The station shakes- the glass trembles. A deep moan thunders from the station's upper level.";
	if canTrigger{
		canTrigger = false;
		view_camera[0] = camera_create_view(camera_shake.view_x, camera_shake.view_y, 2100, 1500, 0, -1, -1, -1, 1050, 750);
		camera_shake.range = 100;
	}
}

if counter = 2{
	speaker = spr_com_demeter;
	text = "...What in the world?";
}

if counter = 3{
	speaker = spr_com_blank;
	text = "A weary voice comes over the commlink.";
}

if counter = 4{
	speaker = spr_com_believer;
	text = "My crew! What did you do to them!?";
}

if counter = 5{
	speaker = spr_com_alan;
	text = "...";
}

if counter = 6{
	speaker = spr_com_jay;
	text = "I found you!";
}

if counter = 7{
	speaker = spr_com_believer;
	text = "Ah!";
}

if counter = 8{
	speaker = spr_com_jay;
	text = "Get back here, damnit!";
}

if counter = 9{
	speaker = spr_com_blank;
	text = "Jay and the haggard man grunt over the commlink for a moment.";
}

if counter = 10{
	speaker = spr_com_jay;
	text = "Phew! Sorry... He wriggled out of the ropes again.";
}

if counter = 11{
	speaker = spr_com_jay;
	text = "Um.. He dropped his little friend. Should I-";
}

if counter = 12{
	speaker = spr_com_alan;
	text = "DON'T TOUCH THE GODDAMN SLUG!";
}

if counter = 13{
	speaker = spr_com_jay;
	text = "Holy shit- received!";
}

if counter = 14{
	speaker = spr_com_alan;
	text = "*cough* I thought we talked about this!";
}

if counter = 15{
	speaker = spr_com_jay;
	text = "We did? I don't remember...";
}

if counter = 16{
	speaker = spr_com_alan;
	text = "Just...*cough* wait for Glaucus to handle it, will you?";
}

if counter = 17{
	speaker = spr_com_jay;
	text = "Got it.";
}

if counter = 18{
	talking = false;
	alan3.incontrol = true;
	counter = 19;
}