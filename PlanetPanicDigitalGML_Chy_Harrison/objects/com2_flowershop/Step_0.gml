//Flower Shop

if counter = 1{
	speaker = spr_com_beau;
	text = "Hey, Alan! Haven't seen you around these parts in a while!";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "It's good to see you, Beau. Your shop's grown as much as you have. Your parents would be proud.";
}

if counter = 3{
	speaker = spr_com_beau;
	text = "*eyes water* Thank you! I've been working really hard.";
}

if counter = 4{
	speaker = spr_com_beau;
	text = "Hey, why don't you buy a flower!? I'm sure Alice would love one!";
}

if counter = 5{
	speaker = spr_com_alan;
	text = "*clears throat* I can't...";
}

if counter = 6{
	speaker = spr_com_beau;
	text = "Fine... If you're going to be like that...";
}

//decision
if counter = 7{
	speaker = spr_com_beau;
	text = "Fine... If you're going to be like that...";
	decision = true;
}

if counter = 8{
	if choice = false{
		speaker = spr_com_alan;
		text = "Alice caught an illness last year. She's dead.";
	} else{
		speaker = spr_com_alan;
		text = "I have to go. I'll see you later, Beau.";
	}
	decision = false;
}
//

if counter = 9{
	if choice = false{
		speaker = spr_com_beau;
		text = "Oh my god...! Alan- I'm so sorry!";
	} else{
		speaker = spr_com_beau;
		text = "Come again soon, okay? And tell Alice I said hi!";
	}
}

if counter = 10{
	if choice = false{
		speaker = spr_com_alan;
		text = "It's fine. Really.";
	} else{
		talking = false;
		alan2.incontrol = true;
		counter = 11;
	}
}

if counter = 11{
	speaker = spr_com_beau;
	text = "Beau comes around the counter and hugs Alan.";
}

if counter = 12{
	speaker = spr_com_alan;
	text = "*struggles to hold back tears* Damnit...!";
}

if counter = 13{
	speaker = spr_com_alan;
	text = "I should get going...";
}

if counter = 14{
	speaker = spr_com_beau;
	text = "*lets go of Alan* If you ever need help or anything, I'm here for you- okay?";
}

if counter = 15{
	speaker = spr_com_alan;
	text = "Thank you. I'll keep that in mind.";
}

if counter = 16{
	counter = 17;
	talking = false;
	alan2.incontrol = true;
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