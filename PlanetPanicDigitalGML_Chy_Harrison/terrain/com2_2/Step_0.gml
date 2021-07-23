//Jay found the abandoned settlement

if counter = 1{
	speaker = spr_com_jay;
	text = "I found what looks like an abandoned settlement. Want to come check it out?";
}

if counter = 2{
	speaker = spr_com_glaucus;
	text = "I've got to stay here to repair the ship. It's going to take me several more hours.";
}

if counter = 3{
	speaker = spr_com_demeter;
	text = "Come quickly. The sound of Glaucus fixing the ship is driving me insane.";
}

if counter = 4{
	speaker = spr_com_jay;
	text = "Roger that.";
}

if counter = 5{
	talking = false;
	if canTrigger{
		canTrigger = false;
		jay2.sprite_index = alan_rifle;
		jay2.image_xscale = 1;
		jay2.incontrol = true;
	}
}