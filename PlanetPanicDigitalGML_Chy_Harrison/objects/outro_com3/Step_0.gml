if counter = 1{
	speaker = spr_com_alan;
	text = "HOLD ON FOR YOUR LIFE!";
}

if counter = 2{
	speaker = spr_com_demeter;
	text = "SHIT! SHIT!";
}

if counter = 3{
	speaker = spr_com_jay;
	text = "HOLY F-";
}

if counter >= 4{
	room_goto(scene7);
}