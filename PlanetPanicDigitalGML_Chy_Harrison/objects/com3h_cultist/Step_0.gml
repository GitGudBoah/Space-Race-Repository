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
	text = "Where are the believers? Do you know?";
}

if counter = 6{
	speaker = spr_com_believer;
	text = "On this station. In the den. In the basement. The pathways are tied up- they're being sliced open as we speak!";
}

if counter = 7{
	speaker = spr_com_demeter;
	text = "The pirate gang on this station. They could be a part of this Nalthuraas cult.";
}

if counter = 8{
	speaker = spr_com_jay;
	text = "They might have information about your missing son, Monroe.";
}

if counter = 9{
	speaker = spr_com_believer;
	text = "*trembles and rocks back and forth*";
}

if counter = 10{
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