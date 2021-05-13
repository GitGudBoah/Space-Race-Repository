// Attis salesman

if counter = 1{
	speaker = spr_com_believer;
	text = "You look like you could use a pack of x!";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "Bother someone else.";
}

if counter = 3{
	speaker = spr_com_believer;
	text = "Your loss.";
}

if counter = 4 && enemy_manager.alive{
	talking = false;
	if canTrigger{
		canTrigger = false;
		alan_move2.incontrol = true;
	}
}