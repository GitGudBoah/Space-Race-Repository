//Attis maintenance worker

if counter = 1{
	speaker = spr_com_believer;
	text = "There goes that kid of yours.";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "I'll catch her.";
}

if counter = 3{
	speaker = spr_com_believer;
	text = "Being a single parent must be tough work, huh?";
}

if counter = 4{
	speaker = spr_com_alan;
	text = "...";
}

if counter = 5{
	speaker = spr_com_believer;
	text = "*sweats nervously* I'm going to get back to work!";
}

if counter = 6{
	speaker = spr_com_believer;
	text = "Sorry, Alan.";
}

if counter = 7 && enemy_manager.alive{
	talking = false;
	if canTrigger{
		canTrigger = false;
		alan_move2.incontrol = true;
	}
}