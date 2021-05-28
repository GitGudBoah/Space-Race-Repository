//access Xenom

if counter = 1{
	speaker = spr_com_blank;
	text = "Enter Xenom?";
	choice = false;
}

//decision
if counter = 2{
	speaker = spr_com_blank;
	text = "Enter Xenom?";
	decision = true;
}

if counter = 3{
	if choice = false{
		counter = 0;
		talking = false;
		player.incontrol = true;
		xenom.available = true;
	} else{
		counter = 0;
		talking = false;
		player.incontrol = true;
		xenom.available = true;
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