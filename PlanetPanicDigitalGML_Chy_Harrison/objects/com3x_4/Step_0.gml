//barricade

if counter = 1{
	speaker = spr_com_blank;
	text = "A barricade blocks your path.";
	choice = false;
}

//decision
if counter = 2{
	speaker = spr_com_blank;
	text = "A barricade blocks your path.";
	decision = true;
}

if counter = 3{
	if choice = false{
		if counter2 = 1{
			counter = 5;
			talking = false;
			alan3.incontrol = true;
			instance_destroy(barricade);
		} else{
			speaker = spr_com_blank;
			text = "You must eliminate the red alien.";
		}
	} else{
		counter = 0;
		talking = false;
		alan3.incontrol = true;
		barricade.available = true;
	}
	decision = false;
}
//

if counter = 4{
	counter = 0;
	talking = false;
	alan3.incontrol = true;
	barricade.available = true;
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