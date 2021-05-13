// Drinks and Cigarettes: shopkeeper and customers

if counter = 1{
	speaker = spr_com_alan;
	text = "*leans against counter*";
}

if counter = 2{
	speaker = spr_com_believer;
	text = "Did you hear the news? They called it a living black hole.";
}

if counter = 3{
	speaker = spr_com_alan;
	text = "Elroy, give me a pack of the usual, would you?";
}

if counter = 4{
	speaker = spr_com_kandar;
	text = "Sure thing.";
}

if counter = 5{
	speaker = spr_com_believer;
	text = "The station scientists said it grows like a cancer. It could be the death of the universe.";
}

if counter = 6{
	speaker = spr_com_alan;
	text = "What are you all so worried about? The goddamn thing is too far away.";
}

if counter = 7{
	speaker = spr_com_alan;
	text = "It's unlikely we'll ever see it in our lifetime.";
}

if counter = 8{
	speaker = spr_com_believer;
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
	speaker = spr_com_kandar;
	text = "On the topic of cancer, don't you think you've been smoking too much? What'll happen to that kid of yours if you get sick?";
}

if counter = 12{
	speaker = spr_com_alan;
	text = "Elroy, not this again.";
}

if counter = 13{
	speaker = spr_com_kandar;
	text = "At least spend some more time with her. You're the only family she's got left.";
}

if counter = 14{
	speaker = spr_com_alan;
	text = "...";
}

if counter = 15{
	speaker = spr_com_kandar;
	text = "*smiles and glances*";
}

if counter = 16{
	speaker = spr_com_ralaxia;
	text = "Dad, I found something! Come look!";
}

if counter = 17{
	speaker = spr_com_kandar;
	text = "He'll be right there!";
}

if counter = 18{
	speaker = spr_com_alan;
	text = "...";
}

if counter = 19{
	speaker = spr_com_alan;
	text = "Thanks.";
}

if counter = 20 && enemy_manager.alive{
	talking = false;
	if canTrigger{
		canTrigger = false;
		alan_move2.incontrol = true;
	}
}