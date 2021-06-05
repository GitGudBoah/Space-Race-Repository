//instruction
if enemy_manager3.game_over = false{
	if alan3.x >= 3150 && counter = 0{
		counter = 1;
		alan3.incontrol = false;
		talking = true;
	}
}

if counter = 1{
	speaker = spr_com_demeter;
	text = "Real smooth back there, Glaucus.";
}

if counter = 2{
	speaker = spr_com_glaucus;
	text = "I...don't think she likes me.";
}

if counter = 3{
	speaker = spr_com_blank;
	text = "Shrieks echo from ahead.";
}

if counter = 4{
	speaker = spr_com_alan;
	text = "*draws combat knife*";
}

if counter = 5{
	speaker = spr_com_blank;
	text = "[Press Q to strike with your knife. Be mindful - your knife has limited uses.]";
}

if counter = 6{
	speaker = spr_com_blank;
	text = "[Press W to climb and S to descend.]";
}

if counter = 7{
	talking = false;
	alan3.incontrol = true;
	counter = 8;
}