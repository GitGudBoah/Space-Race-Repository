//plant encounter

if counter = 1{
	speaker = spr_com_demeter;
	text = "OOH. A perfect sample of these glowing plants!";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "Right now, they're an obstacle.";
}

if counter = 3{
	speaker = spr_com_jay;
	text = "*fires a stream of bullets at the plant* It won't budge!";
}

if counter = 4{
	speaker = spr_com_demeter;
	text = "I think there's something moving inside... Step back, everyone! [Press Shift to dash]";
}

if counter = 5{
	counter = 6;
	talking = false;
	jay2_2.incontrol = true;
	demeter.reloading = false;
	speaker = spr_com_blank;
	text = "[Press E to fire a poison shot]";
}

if counter = 6{
	if jay2_2.x >= 8050{
		talking = true;
	} else{
		talking = false;
	}
	
	if (keyboard_check_pressed(ord("E"))){
		counter = 7;
		talking = false;
	}
}