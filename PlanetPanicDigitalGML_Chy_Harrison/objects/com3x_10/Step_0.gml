//beast fight: engage

if counter = 1{
	speaker = spr_com_blank;
	text = "The beast shrieks. Its tendrils erupt from the corners of the room.";
	if canTrigger{
		canTrigger = false;
		view_camera[0] = camera_create_view(camera_shake.view_x, camera_shake.view_y, 2100, 1500, 0, -1, -1, -1, 1050, 750);
		camera_shake.range = 100;
	}
}

if counter = 2{
	speaker = spr_com_alan;
	text = "Glaucus- You're the only one who can get near that thing!";
}

if counter = 3{
	speaker = spr_com_glaucus;
	text = "I know. But this knife won't be enough to subdue it.";
}

if counter = 4{
	speaker = spr_com_demeter;
	text = "What's our plan!?";
}

if counter = 5{
	speaker = spr_com_glaucus;
	text = "The beast is drenched in water. Electrocution, perhaps?";
}

if counter = 6{
	speaker = spr_com_alan;
	text = "Whatever you're planning, Glaucus, I trust you. *cough*";
}

if counter = 7{
	speaker = spr_com_glaucus;
	text = "*smile* Then, let's begin.";
}

if counter = 8{
	speaker = spr_com_blank;
	text = "[Tap F to overload Glaucus' heartbeat sensor. At 100%, enemies near you will be shocked. Knife takedowns will refresh this ability.]";
}

if counter = 9{
	talking = false;
	glaucus3_lead.incontrol = true;
	counter = 0;
	beast.reloading = false;
}