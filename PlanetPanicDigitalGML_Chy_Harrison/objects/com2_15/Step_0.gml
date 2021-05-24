//Alan enters the museum

if counter = 1{
	speaker = spr_com_robot;
	text = "DR. ZHANG IS WAITING FOR YOU INSIDE.";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "Shut the hell up, tin can.";
}

if counter = 3{
	speaker = spr_com_robot;
	text = "...";
}

if counter = 4{
	room_goto(Victory);
}