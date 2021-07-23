// Drinks and Cigarettes: shopkeeper and customers

if counter = 1{
	speaker = spr_com_alan;
	text = "*leans against counter*";
}

if counter = 2{
	speaker = spr_com_citizen1;
	text = "Didn't you hear the news? They called it a living black hole.";
}

if counter = 3{
	speaker = spr_com_alan;
	text = "Elroy, give me a pack of the usual, would you?";
}

if counter = 4{
	speaker = spr_com_elroy;
	text = "Sure thing.";
}

if counter = 5{
	speaker = spr_com_citizen2;
	text = "The station scientists said that Nalthuraas grows like a cancer- that soon, it will wipe out all life the universe!";
}

if counter = 6{
	speaker = spr_com_alan;
	text = "What are you all so worried about? The damn monster is too far away.";
}

if counter = 7{
	speaker = spr_com_alan;
	text = "It's unlikely we'll ever see it in our lifetime.";
}

if counter = 8{
	speaker = spr_com_citizen1;
	text = "But what about future generations?";
}

if counter = 9{
	speaker = spr_com_alan;
	text = "*scoffs and blows smoke from nose*";
}

if counter = 10{
	speaker = spr_com_alan;
	text = "I'm sure they'll be able to handle it.";
}

if counter = 11{
	speaker = spr_com_elroy;
	text = "Speaking of cancer, you've been smoking like you're trying to catch it, Alan. What'll happen to that kid of yours if you get sick?";
}

//decision
if counter = 12{
	speaker = spr_com_elroy;
	text = "Speaking of cancer, you've been smoking like you're trying to catch it, Alan. What'll happen to that kid of yours if you get sick?";
	decision = true;
}

if counter = 13{
	if choice = false{
		speaker = spr_com_alan;
		text = "I've been through hell and back. I'll be damned if a cigarette is what kills me.";
	} else{
		speaker = spr_com_alan;
		text = "Someone else will take care of her if that happens. They'll probably do a better job than I can.";
	}
	decision = false;
}
//

if counter = 14{
	if choice = false{
		speaker = spr_com_elroy;
		text = "But it's always the people around you that suffer, ain't it? At least spend some more time with her, man. You're the only family she's got left.";
	} else{
		speaker = spr_com_elroy;
		text = "But they aren't you. At least spend some more time with her, man. Alice is the only thing your wife left you, and you would throw her away?";
	}
}

if counter = 15{
	speaker = spr_com_alan;
	text = "...";
}

if counter = 16{
	speaker = spr_com_elroy;
	text = "*smiles and glances*";
}

if counter = 17{
	speaker = spr_com_alice;
	text = "Dad, I found something! Come look!";
}

if counter = 18{
	speaker = spr_com_elroy;
	text = "He'll be right there!";
}

if counter = 19{
	speaker = spr_com_alan;
	text = "...";
}

if counter = 20{
	speaker = spr_com_alan;
	text = "Thanks.";
}

if counter = 21 && enemy_manager.alive{
	talking = false;
	if canTrigger{
		canTrigger = false;
		alan_move2.incontrol = true;
	}
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