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

if music.first_time{
	if counter = 4{
		speaker = spr_com_glaucus;
		text = "*leans forward* There are messages written across the gate.";
	}

	if counter = 5{
		speaker = spr_com_jay;
		text = "Seems like a quarrel between lovers. Woah! She called him a f-";
	}

	if counter = 6{
		speaker = spr_com_alan;
		text = "Each of them has a key to the gate. *cough* They won't let each other leave, but they won't let each other near either...";
	}

	if counter = 7{
		speaker = spr_com_demeter;
		text = "Sounds about right.";
	}
	
	if counter = 8{
		speaker = spr_com_demeter;
		text = "If I'm remembering correctly, there are two space stations nearby: Hal-9 to the north, and Xenom to the south.";
	}
	
	if counter = 9{
		speaker = spr_com_glaucus;
		text = "Maybe we'll find one of these lovers there.";
	}

	if counter = 10{
		counter = 0;
		talking = false;
		player.incontrol = true;
		gate.available = true;
		music.first_time = false;
	}
} else{
	if counter = 4{
		counter = 0;
		talking = false;
		player.incontrol = true;
		gate.available = true;
	}
}