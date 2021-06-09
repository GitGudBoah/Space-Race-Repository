//guy encounter

if counter = 1{
	speaker = spr_com_guy;
	text = "Due to illegal traffiking through this area, I'll have to inspect your ship's cargo.";
}

if counter = 2{
	speaker = spr_com_demeter;
	text = "We have an android on board. He'll show you around.";
}

if counter = 3{
	speaker = spr_com_alan;
	text = "We're looking for a security officer who goes by the name Titania. Ring any bells?";
}

if counter = 4{
	speaker = spr_com_guy;
	text = "Unlucky. Titania is currently being held hostage by a pirate gang- ex-followers of the Dread Empress.";
}

if counter = 5{
	speaker = spr_com_guy;
	text = "If you really want to see her, you'll have to visit the gang's den toward the end of the station.";
}

if counter = 6{
	speaker = spr_com_jay;
	text = "You don't reckon we could just walk in and ask to see her, right?";
}

if counter = 7{
	speaker = spr_com_guy;
	text = "They're the type to shoot anything that moves.";
}

if counter = 8{
	speaker = spr_com_jay;
	text = "Good. I needed target practice.";
}

if counter = 9{
	speaker = spr_com_alan;
	text = "We'll do what we have to do. Thank you.";
}

if counter = 10{
	speaker = spr_com_guy;
	text = "Sure thing.";
}

if counter = 11{
	talking = false;
	alan3.incontrol = true;
	counter = 12;
}

//decision
if counter = 100{
	speaker = spr_com_kandar;
	text = "Is there anything else I can help you with?";
	decision = true;
}

if counter = 100{
	if choice = false{
		
	} else{
		talking = false;
		alan3.incontrol = true;
		counter = 0;
	}
	decision = false;
}
//

//decision: choosing
if decision{
	if keyboard_check_pressed(ord("D")){
		choice = true;
	}

	if keyboard_check_pressed(ord("A")){
		choice = false;
	}
}