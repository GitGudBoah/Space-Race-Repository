if counter >= 4 && canTrigger{
	canTrigger = false;
	burned = true;
	with (npc4){
		instance_destroy();
	}
	instance_create_layer(4864, 1040, "Instances", alice_corpse);
	farewell = true;
}

//dialogue
if counter >= 4 && canTrigger2{
	//cancel elroy_gun
	e_assist = false;
	canTrigger2 = false;
	alan_move2.incontrol = false;
	talking = true;
}

if alive{
	if alan_move2.rifle{
		has_gun = true;
	}
}

if has_gun{
	if counter2 = 1{
		speaker = spr_com_alan;
		text = "*tosses aside rifle*";
		alan_move2.rifle = false;
	}

	if counter2 = 2{
		speaker = spr_com_alan;
		text = "I'm coming!";
	}

	if counter2 = 3{
		speaker = spr_com_alan;
		text = "I'll be right there!";
	}

	if counter2 = 4{
		talking = false;
		if canTrigger3{
			canTrigger3 = false;
			alan_move2.incontrol = true;
		}
	}
} else{
	if counter2 = 1{
		speaker = spr_com_alan;
		text = "I'm coming!";
	}

	if counter2 = 2{
		speaker = spr_com_alan;
		text = "I'll be right there!";
	}

	if counter2 = 3{
		talking = false;
		if canTrigger3{
			canTrigger3 = false;
			alan_move2.incontrol = true;
		}
	}
}