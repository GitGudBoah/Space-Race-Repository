//Jay finds some loot

if counter = 1{
	speaker = spr_com_blank;
	text = "You find a skeleton with a gold ring on its finger.";
}

//decision
if counter = 2{
	speaker = spr_com_blank;
	text = "You find a skeleton with a gold ring on its finger.";
	decision = true;
}

if counter = 3{
	speaker = spr_com_jay;
	if choice = false{
		text = "Old habits die hard...";
	} else{
		text = "No. I'm not like them.";
	}
	decision = false;
}

if counter = 4{
	talking = false;
	if canTrigger{
		canTrigger = false;
		jay2.incontrol = true;
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