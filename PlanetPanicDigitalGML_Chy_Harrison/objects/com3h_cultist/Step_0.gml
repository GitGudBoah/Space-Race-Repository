//cultist

if counter = 1{
	speaker = spr_com_believer;
	text = "Pathways to the Starman- beware the believers!";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "Get out of our way.";
}

if counter = 3{
	speaker = spr_com_believer;
	text = "The believers- I see their memories as they're being formed! The Starman connects us!";
}

if counter = 4{
	speaker = spr_com_believer;
	text = "The pathways are being opened- they scream in pain! The believers will do the same to you!";
}

if counter = 5{
	speaker = spr_com_demeter;
	text = "Pathways... Are you talking about human sacrifices?";
}

if counter = 6{
	speaker = spr_com_believer;
	text = "There is one who shares your blood- a Monroe. The believers have him!";
}

if counter = 7{
	speaker = spr_com_demeter;
	text = "*clenches fist* Where are the sacrifices being kept?";
}

if counter = 8{
	speaker = spr_com_believer;
	text = "In the museum. In the basement. The pathways are tied up- they're being sliced open as we speak!";
}

if counter = 9{
	speaker = spr_com_believer;
	text = "*trembles and rocks back and forth*";
}

if counter = 10{
	speaker = spr_com_demeter;
	text = "I'll save them. Don't worry.";
}

if counter = 11{
	speaker = spr_com_jay;
	text = "I don't have a good feeling about this.";
}

if counter = 12{
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