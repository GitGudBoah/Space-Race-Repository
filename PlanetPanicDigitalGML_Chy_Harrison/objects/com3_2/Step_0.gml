//access Hal-9

if counter = 1{
	speaker = spr_com_blank;
	text = "Enter Hal-9?";
	choice = false;
}

//decision
if counter = 2{
	speaker = spr_com_blank;
	text = "Enter Hal-9?";
	decision = true;
}

if counter = 3{
	if choice = false{
		counter = 0;
		talking = false;
		player.incontrol = true;
		hal_9.available = true;
	} else{
		counter = 0;
		talking = false;
		player.incontrol = true;
		hal_9.available = true;
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