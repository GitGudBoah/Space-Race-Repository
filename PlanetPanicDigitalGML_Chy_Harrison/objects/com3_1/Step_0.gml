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
		speaker = spr_com_jay;
		text = "How's your love life going, Glaucus?";
	}

	if counter = 5{
		speaker = spr_com_glaucus;
		text = "I consider you as a friend to me, Jay.";
	}

	if counter = 6{
		speaker = spr_com_demeter;
		text = "Ouch- the cold, hard rejection.";
	}

	if counter = 7{
		speaker = spr_com_jay;
		text = "*sigh* Why do you have to make things weird? That's not what I meant.";
	}

	if counter = 8{
		speaker = spr_com_alan;
		text = "It was a weird question, regardless.";
	}

	if counter = 9{
		speaker = spr_com_jay;
		text = "I'm just worried that you feel lonely since you're the only android here. I vote that we find another android for our crew!";
	}

	if counter = 10{
		speaker = spr_com_glaucus;
		text = "You won't succeed at matching me with another of my kind. Androids are designed to feel affection only towards humans.";
	}

	if counter = 11{
		speaker = spr_com_glaucus;
		text = "That's why... I'm unsure if our friendship is even genuine.";
	}
	
	if counter = 12{
		speaker = spr_com_glaucus;
		text = "Sorry. I shouldn't have said that.";
	}
	
	if counter = 13{
		speaker = spr_com_jay;
		text = "Friends tell each other what's on their mind, Glaucus. Don't worry about being a downer, we're here for you.";
	}

	if counter = 14{
		speaker = spr_com_demeter;
		text = "If I'm remembering correctly, there are two space stations nearby: Hal-9 to the north, and Xenom to the south.";
	}

	if counter = 15{
		speaker = spr_com_alan;
		text = "Says here that a key is being held on either station.";
	}
	
	if counter = 16{
		speaker = spr_com_alan;
		text = "Let's get going.";
	}

	if counter = 17{
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