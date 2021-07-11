//encounter trap
if distance_to_object(jay2_2) <= range && counter = 0{
	counter += 1;
	talking = true;
}

if counter = 1{
	speaker = spr_com_alan;
	text = "Jay, step carefully.";
}

if counter = 2{
	speaker = spr_com_demeter;
	text = "It appears our friend here is a bit of an introvert.";
}

if counter = 3{
	speaker = spr_com_jay;
	text = "*chuckle* Whoever made this should learn a thing or two about subtlety.";
	jay2_2.sprite_index = alan_kneeled;
}

if counter = 4{
	speaker = spr_com_blank;
	text = "A familiar voice shouts from the back of the room:";
}

if counter = 5{
	speaker = spr_com_believer;
	text = "You'll never catch my crew! Stay away - heathens!";
	jay2_2.sprite_index = alan_rifle;
}

if counter = 6{
	speaker = spr_com_alan;
	text = "We come in peace! We're seeking shelter here from a hostile entity!";
}

if counter = 7{
	speaker = spr_com_blank;
	text = "The sound of a crossbow firing reverberates throughout the room.";
}

if counter = 8{
	speaker = spr_com_jay;
	text = "Shit...! [press Shift to dodge through projectiles]";
}

if counter = 9{
	counter = 10;
	talking = false;
	jay2_2.incontrol = true;
	believer.reloading = false;
}

if talking{
	jay2_2.incontrol = false;
}