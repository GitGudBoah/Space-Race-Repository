if counter = 1{
	speaker = spr_com_glaucus;
	text = "I'm unsure if it's the result of my coding, but I value the two of you. Greatly.";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "*scratches head* That's good...for our team dynamic. It should be useful on the battlefield-";
}

if counter = 3{
	speaker = spr_com_demeter;
	text = "Oh shut up, Alan. Glaucus, do you have any hobbies?";
}

if counter = 4{
	speaker = spr_com_glaucus;
	text = "I enjoy collecting artifacts from earth. And I enjoy speaking to you humans.";
}

if counter = 5{
	speaker = spr_com_alan;
	text = "Hm. I have something you might like back on the ship. I'll show it to you after this, how's that sound?";
}

if counter = 6{
	speaker = spr_com_glaucus;
	text = "I can hardly contain my excitement.";
	if canTrigger{
		canTrigger = false;
		audio_sound_gain(placeholder_music8, 0, 3000);
	}
}

if counter = 7{
	speaker = spr_com_alan;
	text = "*grin* Good.";
}

if counter = 8{
	speaker = spr_com_demeter;
	text = "I think we found our beast!";
	if canTrigger2{
		canTrigger2 = false;
		alarm[1] = room_speed * 3;
		audio_stop_all();
		audio_sound_gain(placeholder_music8, 1, 0);
		audio_play_sound(placeholder_music9, 1, true);
		//animation speed
		var lay_id = layer_get_id("Background");
		var back_id = layer_background_get_id(lay_id);
		layer_background_speed(back_id, 1);
	}
}

if counter = 9{
	speaker = spr_com_alan;
	text = "More like it found us!";
}

if counter = 10{
	speaker = spr_com_glaucus;
	text = "Alan- I don't think a knife is going to be sufficient!";
}

if counter = 11{
	speaker = spr_com_alan;
	text = "Wait... It's a piece of Nalthuraas!";
}

if counter = 12{
	speaker = spr_com_alan;
	text = "DEMETER, MOVE!";
}