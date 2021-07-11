//Jokester

if counter = 1{
	speaker = spr_com_jokester;
	text = "Hey, geezer. You look funny. Tell me a joke, would ya?";
}

//decision
if counter = 2{
	speaker = spr_com_jokester;
	text = "Hey, geezer. You look funny. Tell me a joke, would ya?";
	decision = true;
}

if counter = 3{
	if choice = false{
		speaker = spr_com_alan;
		text = "A bear walks into a bar and says: Give me a whiskey and...cola.";
	} else{
		speaker = spr_com_alan;
		text = "What did the bald man exclaim when he received a comb for a present?";
	}
	decision = false;
}
//

if counter = 4{
	if choice = false{
		speaker = spr_com_alan;
		text = "The bartender asks: Why the big pause?";
	} else{
		speaker = spr_com_jokester;
		text = "...?";
	}
}

if counter = 5{
	if choice = false{
		speaker = spr_com_alan;
		text = "The bear shrugged and said: I'm not sure; I was born with them.";
	} else{
		speaker = spr_com_alan;
		text = "Thanks- I'll never part with it!";
	}
}

if counter = 6{
	if choice = false{
		speaker = spr_com_jokester;
		text = ".....................";
	} else{
		speaker = spr_com_jokester;
		text = "PFFT AHAHHAHAHA- Good shit, gramps!";
	}
}

if counter = 7{
	if choice = false{
		speaker = spr_com_alan;
		text = "*sweats nervously*";
	} else{
		speaker = spr_com_jokester;
		text = "Here! To thank you for making me laugh, I'll give you my rarest trading card. Treat her well, would ya?";
		music.rare_card = true;
	}
}

if counter = 8{
	if choice = false{
		speaker = spr_com_jokester;
		text = "That sucked, gramps.";
	} else{
		speaker = spr_com_alan;
		text = "Sure thing, kid.";
	}
}

if counter = 9{
	counter = 10;
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