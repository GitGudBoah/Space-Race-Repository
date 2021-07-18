//guy encounter

if counter = 1{
	speaker = spr_com_guy;
	text = "Due to illegal traffiking in this area, I'll have to inspect your ship's cargo.";
}

if counter = 2{
	speaker = spr_com_demeter;
	text = "We have an android on board. He'll show you around.";
}

if counter = 3{
	speaker = spr_com_alan;
	text = "Before you go- mind telling us where the key to the gate is?";
}

if counter = 4{
	speaker = spr_com_guy;
	text = "The police have it, but they're busy cracking down on the Nalthuraas cult right now.";
}

if counter = 5{
	speaker = spr_com_guy;
	text = "If you really want that key, you could help them deal with those weirdos. They should be at the botanical museum toward the end of the station.";
}

if counter = 6{
	speaker = spr_com_jay;
	text = "Let's hope that they're friendly cultists. If not...";
}

if counter = 7{
	speaker = spr_com_alan;
	text = "We'll do what we have to do. Thank you.";
}

if counter = 8{
	speaker = spr_com_guy;
	text = "No problem.";
}

if counter = 9{
	talking = false;
	alan3.incontrol = true;
	counter = 10;
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