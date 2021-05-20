// Elroy tosses you a gun.
if enemy_manager.e_assist = true{
	if counter = 1{
		speaker = spr_com_elroy;
		text = "ALAN, CATCH!";
	}

	if counter = 2{
		speaker = spr_com_elroy;
		text = "*tosses a rifle*";
	}

	if counter = 3{
		speaker = spr_com_alan;
		text = "*snatches it out of the air* [Hold down trigger]";
		elroy_gun.sprite_index = spr_elroy_concerned;
		alan_move2.rifle = true;
	}

	if counter = 4 && enemy_manager.alive{
		talking = false;
		if canTrigger{
			canTrigger = false;
			alan_move2.incontrol = true;
		}
	}
} else{
	if counter = 1{
		speaker = spr_com_elroy;
		text = "Jesus, Alan! Are you okay!?";
	}

	if counter = 2{
		speaker = spr_com_alan;
		text = "I have to hurry!";
	}

	if counter = 3 && enemy_manager.alive{
		talking = false;
		if canTrigger{
			canTrigger = false;
			alan_move2.incontrol = true;
		}
	}
}