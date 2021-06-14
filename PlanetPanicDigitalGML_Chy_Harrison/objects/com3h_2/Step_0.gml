//guy encounter

if counter = 1{
	speaker = spr_com_citizen2;
	text = "The police are cracking down on a pirate den beyond this point.";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "We need to speak to the hostage, Titania.";
	alan3.image_xscale = -1;
}

if counter = 3{
	speaker = spr_com_citizen2;
	text = "Wait- Mr. Sheep, is that you!? You look awful-";
}

if counter = 4{
	speaker = spr_com_citizen2;
	text = "I meant to say: you should have said it was you!";
}

if counter = 5{
	speaker = spr_com_demeter;
	text = "We can help your men rescue the hostage. I'm proficient at-";
}

if counter = 6{
	speaker = spr_com_citizen2;
	text = "Alan- we could really use your help! These pirate bastards have all gone insane- they're impossible to predict!";
}

if counter = 7{
	speaker = spr_com_alan;
	text = "Sure thing. And...don't mind the two I've got with me. They know their way around a bullet.";
}

if counter = 8{
	speaker = spr_com_jay;
	text = "*cocks gun and lights cigar*";
}

if counter = 9{
	speaker = spr_com_citizen2;
	text = "Ah- you've got the lone bounty hunter with you.";
}

if counter = 10{
	speaker = spr_com_jay;
	text = "This'll be over in a blink.";
}

if counter = 11{
	speaker = spr_com_alan;
	text = "That was his profession before I recruited him, but yes. This will be over quickly.";
}

if counter = 12{
	speaker = spr_com_citizen2;
	text = "Alright, then. You three can go on ahead. The police should be breaching the front gates right now, actually.";
}

if counter = 13{
	counter = 0;
	talking = false;
	enemy_manager3.target.incontrol = true;
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
		enemy_manager3.target.incontrol = true;
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