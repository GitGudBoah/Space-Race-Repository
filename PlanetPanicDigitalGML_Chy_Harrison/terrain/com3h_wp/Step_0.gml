// Weapon Shop - Hal-9

if counter = 1{
	speaker = spr_com_citizen2;
	text = "Choose an upgrade.";
}

//decision
if counter = 2{
	speaker = spr_com_citizen2;
	text = "Choose an upgrade.";
	decision = true;
}

if counter = 3{
	if choice = 0{
		speaker = spr_com_blank;
		text = "Your pistol's damage has been increased by 25%.";
		music.pistol_upgrade = 1;
	}
	if choice = 1{
		speaker = spr_com_blank;
		text = "Your knife's range has been increased by 25%.";
		music.knife_upgrade = 1;
	}
	if choice = 2{
		speaker = spr_com_blank;
		text = "Your poison shot immobilizes enemies for 50% longer.";
		music.poison_upgrade = 1;
	}
	decision = false;
}
//

if counter = 4{
	counter = 0;
	talking = false;
	enemy_manager3.target.incontrol = true;
}

//decision: choosing
if decision{
	if keyboard_check_pressed(ord("D")) && choice < 2{
		choice += 1;
	}

	if keyboard_check_pressed(ord("A")) && choice > 0{
		choice -= 1;
	}
}