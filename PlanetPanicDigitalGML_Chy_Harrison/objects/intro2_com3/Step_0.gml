// Attis drug dealer

if counter = 1{
	speaker = spr_com_dealer;
	text = "You look stressed, pal. A gram of (drug) could boost your spirits!";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "Bother someone else.";
}

if counter = 3{
	speaker = spr_com_dealer;
	text = "Your loss.";
}

if counter = 4 && enemy_manager.alive{
	talking = false;
	if canTrigger{
		canTrigger = false;
		alan_move2.incontrol = true;
	}
}