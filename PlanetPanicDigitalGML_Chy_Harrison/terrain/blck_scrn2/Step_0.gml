//Dahlia tells Alan to meet her at the museum to hear what she's learned.

if counter = 1{
	speaker = spr_com_dahlia;
	text = "However...";
}

if counter = 2{
	speaker = spr_com_dahlia;
	text = "I have a business deal to offer you.";
}

if counter = 3{
	speaker = spr_com_dahlia;
	text = "If you're interested, come to the museum. I'll be waiting.";
}

if counter = 4{
	counter = 5;
	talking = false;
	alarm[1] = room_speed * 1;
}

//fade out title
if talking && title_alpha > 0{
	title_alpha -= 0.02;
}