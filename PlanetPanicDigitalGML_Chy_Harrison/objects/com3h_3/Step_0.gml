//guy encounter

if counter = 1{
	speaker = spr_com_kandar;
	text = "CHARGE!";
}

if counter = 2{
	talking = false;
	charge = true;
	counter = 3;
}

if counter = 3{
	speaker = spr_com_jay;
	text = "Let's light these dickheads up.";
}

if counter = 4{
	speaker = spr_com_blank;
	text = "[Press R to fire a burst shot. It creates a poison cloud on enemy impact- if they're already poisoned, it creates a damaging explosion instead.";
}

if counter = 5{
	counter = 0;
	talking = false;
	enemy_manager3.target.incontrol = true;
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