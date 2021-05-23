//encounter the believer's crew...

if counter = 1{
	speaker = spr_com_alan;
	text = "He's hiding.";
}

if counter = 2{
	speaker = spr_com_demeter;
	text = "...What killed these people?";
}

if counter = 3{
	speaker = spr_com_jay;
	text = "I don't see any signs of a struggle.";
}

if counter = 4{
	speaker = spr_com_blank;
	text = "Leaves rustle nearby.";
}

if counter = 5{
	counter = 6;
	talking = false;
	jay2_2.incontrol = true;
}