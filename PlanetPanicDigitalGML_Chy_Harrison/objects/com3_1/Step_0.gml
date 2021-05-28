//access the gate

if counter = 1{
	speaker = spr_com_blank;
	text = "The gate's blinkers light up red as your ship approaches.";
}

if counter = 2{
	speaker = spr_com_blank;
	text = "A screen displays the text:";
}

if counter = 3{
	speaker = spr_com_blank;
	text = "2 KEYS REQUIRED";
}

if counter = 4{
	counter = 0;
	talking = false;
	player.incontrol = true;
	gate.available = true;
}