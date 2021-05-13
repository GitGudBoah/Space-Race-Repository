// Elroy tosses you a gun.

if counter = 1{
	speaker = spr_com_kandar;
	text = "ALAN, CATCH!";
}

if counter = 2{
	speaker = spr_com_kandar;
	text = "*tosses a rifle*";
}

if counter = 3{
	speaker = spr_com_alan;
	text = "*snatches it out of the air* [Hold down trigger]";
	alan_move2.rifle = true;
}

if counter = 4 && enemy_manager.alive{
	talking = false;
	if canTrigger{
		canTrigger = false;
		alan_move2.incontrol = true;
	}
}