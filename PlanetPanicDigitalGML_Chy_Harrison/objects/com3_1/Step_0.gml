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
	if music.stations = 0{
		speaker = spr_com_blank;
		text = "2 KEYS REQUIRED";
	}
	if music.stations = 1{
		speaker = spr_com_blank;
		text = "1 KEY REQUIRED";
	}
}

if music.first_time{
	if counter = 4{
		speaker = spr_com_glaucus;
		text = "*leans forward* There are messages written across the gate.";
	}

	if counter = 5{
		speaker = spr_com_jay;
		text = "Seems like a quarrel between lovers. One of them works security... Name's Titania. Yikes! She called him a f-";
	}

	if counter = 6{
		speaker = spr_com_alan;
		text = "Each of them has a key to the gate. They won't let each other leave, but they won't let each other near either...";
	}

	if counter = 7{
		speaker = spr_com_demeter;
		text = "*sigh* That's just how it is sometimes, isn't it?";
	}

	if counter = 8{
		speaker = spr_com_jay;
		text = "Reminds me of my first date. Glaucus, have you dated any other androids?";
	}

	if counter = 9{
		speaker = spr_com_glaucus;
		text = "No. Androids are designed to feel affection only towards humans.";
	}

	if counter = 10{
		speaker = spr_com_jay;
		text = "Ah, I was just like you when I started out- you just haven't met the right android, yet.";
	}
	
	if counter = 11{
		speaker = spr_com_glaucus;
		text = "I suppose there's a chance...";
	}

	if counter = 12{
		speaker = spr_com_demeter;
		text = "If I'm remembering correctly, there are two space stations nearby: Hal-9 to the north, and Xenom to the south.";
	}

	if counter = 13{
		speaker = spr_com_alan;
		text = "Maybe we'll find one of these lovers there.";
	}

	if counter = 14{
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