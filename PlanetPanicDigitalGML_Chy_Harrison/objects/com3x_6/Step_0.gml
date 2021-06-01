//Glaucus takes lead

if counter = 1{
	speaker = spr_com_glaucus;
	text = "*subtle trembling* Right.";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "I didn't know that you could feel nervous.";
}

if counter = 3{
	speaker = spr_com_glaucus;
	text = "I'm not nervous- I'm excited!";
}

if counter = 4{
	speaker = spr_com_demeter;
	text = "That's the spirit!";
}

if counter = 5{
	talking = false;
	glaucus3_lead.incontrol = true;
	counter = 6;
}