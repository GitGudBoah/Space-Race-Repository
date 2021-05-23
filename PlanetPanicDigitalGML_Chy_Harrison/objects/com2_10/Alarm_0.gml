if counter = 1{
	speaker = spr_com_demeter;
	text = "Thanks.";
}
if counter = 3{
	speaker = spr_com_blank;
	if music.ring = true{
	text = "They nicked Johnny's ring!";
	} else {
	text = "I won't let them take us!";
	}
}
if counter = 5{
	speaker = spr_com_alan;
	text = "We need the ship to be ready soon.";
}
alarm[1] = room_speed * 2;