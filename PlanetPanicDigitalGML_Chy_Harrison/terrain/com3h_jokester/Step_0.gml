//Jokester - Hal-9

if counter = 1{
	speaker = spr_com_jokester;
	text = "Holy shit, gramps- you look awful!";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "What are you doing in a place like this? Where the hell are your parents, kid?";
}

if counter = 3{
	speaker = spr_com_jokester;
	text = "Who knows. All I know is that I'm starving for a knee-slapper. Humor me, would ya?";
}

//decision
if counter = 4{
	speaker = spr_com_jokester;
	text = "Who knows. All I know is that I'm starving for a knee-slapper. Humor me, would ya?";
	decision = true;
}

if counter = 5{
	if choice = false{
		speaker = spr_com_alan;
		text = "Did you hear about the actor who fell through the floorboards?";
		counter2 = 1;
	} else{
		speaker = spr_com_alan;
		text = "How do you make a tissue dance?";
		counter2 = 2;
	}
	decision = false;
}
//

if counter2 = 1{
	if counter = 6{
		speaker = spr_com_jokester;
		text = "Let me guess: he was just going through a stage.";
	}

	if counter = 7{
		speaker = spr_com_alan;
		text = "No.. That's not the punch line.";
	}

	if counter = 8{
		speaker = spr_com_jokester;
		text = "Then what is it?";
		choice = false;
		text1 = "Weight...";
		text2 = "Slim...";
	}

	//
	if counter = 9{
		speaker = spr_com_jokester;
		text = "Then what is it?";
		decision = true;
	}

	if counter = 10{
		if choice = false{
			speaker = spr_com_alan;
			text = "Their parents' expectations really weighed them down.";
		} else{
			speaker = spr_com_alan;
			text = "Everyone says that their act was paper-thin.";
		}
		decision = false;
	}
	//
	
	if counter = 11{
		speaker = spr_com_jokester;
		text = "...";
	}
	
	if counter = 12{
		if choice = false{
			speaker = spr_com_jokester;
			text = "That sucks. I hope they find a way to lift their spirits.";
		} else{
			speaker = spr_com_jokester;
			text = "Maybe they're just finding a way to cope with how things are at home.";
		}
	}
	
	if counter = 13{
		if choice = false{
			speaker = spr_com_alan;
			text = "Like listening to jokes?";
		} else{
			speaker = spr_com_alan;
			text = "If that's the case, I'd be happy to help them however I can.";
		}
	}
	
	if counter = 14{
		speaker = spr_com_jokester;
		text = "You killed my mood, gramps. That was lame.";
	}
	
	if counter = 15{
		speaker = spr_com_alan;
		text = "Good. Now go home to your parents; this is no place for a kid to be by themself.";
	}
	
	if counter = 16{
		counter = 0;
		talking = false;
		enemy_manager3.target.incontrol = true;
	}
}

if counter2 = 2{
	if counter = 6{
		speaker = spr_com_jokester;
		text = "...?";
	}
	
	if counter = 7{
		speaker = spr_com_alan;
		text = "Put a little boogie in it.";
	}
	
	if counter = 8{
		speaker = spr_com_jokester;
		text = "*WHEEZE* *WHEEZE*";
	}
	
	if counter = 9{
		speaker = spr_com_alan;
		text = "Hey- are you okay!?";
	}
	
	if counter = 10{
		speaker = spr_com_jokester;
		text = "AHAHAHAHAHAAH!";
	}
	
	if counter = 11{
		speaker = spr_com_alan;
		text = "Jesus, kid...";
	}
	
	if counter = 12{
		speaker = spr_com_jokester;
		text = "You never miss! Thanks, gramps- I needed that.";
	}
	
	if counter = 13{
		speaker = spr_com_alan;
		text = "Now go home to your parents; this is no place for a kid to be by themself.";
	}
	
	if counter = 14{
		counter = 0;
		talking = false;
		enemy_manager3.target.incontrol = true;
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