//Trap the believer

if counter = 1 && enemy_manager2.game_over = false{
	if jay2_2.x < 7700{
		jay2_2.incontrol = false;
		jay2_2.x += 25;
		jay_moveit = true;
	} else{
		counter = 2;
		jay_moveit = false;
	}
}

if counter = 2{
	talking = true;
	jay2_2.incontrol = false;
	speaker = spr_com_alan;
	text = "Get low!";
}

if counter = 3 && canTrigger{
	canTrigger = false
	speaker = spr_com_alan;
	text = "*fires a shot from his pistol, springing the trap*";
	audio_sound_gain(placeholder_music1, 0, 2000);
}

if counter = 4{
	speaker = spr_com_blank;
	text = "The haggard man is immobilized - his crossbow falls from his fingers.";
}

if counter = 5{
	speaker = spr_com_blank;
	text = "He clutches a glowing slug close to his chest, then shouts toward the back of the room:";
}

if counter = 6{
	speaker = spr_com_believer;
	text = "All of you - run! Go while they're distracted!";
}

if counter = 7{
	speaker = spr_com_demeter;
	text = "*aggresively pokes the haggard man on the forehead* We told you we come in peace!";
}

if counter = 8{
	speaker = spr_com_alan;
	text = "Your crew is dead.";
}

if counter = 9{
	speaker = spr_com_believer;
	text = "*eyes widen*";
}

if counter = 10{
	speaker = spr_com_demeter;
	text = "*takes a step back from the haggard man*";
}

if counter = 11{
	speaker = spr_com_jay;
	text = "So much for subtelty, Alan...";
}

if counter = 12{
	speaker = spr_com_alan;
	text = "You've failed them. Wake up and accept responsibilty.";
}

if counter = 13{
	speaker = spr_com_believer;
	text = "They're...dead?";
}

if counter = 14{
	speaker = spr_com_alan;
	text = "Don't just sit around waiting to die when there's so much more you could be doing!";
}

if counter = 15{
	speaker = spr_com_believer;
	text = "Ah...! *begins twitching fearfully*";
}

if counter = 16{
	counter = 17;
	talking = false;
	alarm[0] = room_speed * 2;
}

if counter = 18{
	speaker = spr_com_glaucus;
	text = "Let's play among the stars! Gents and ladies, she's ready!";
}

if counter = 19{
	speaker = spr_com_jay;
	text = "Oh, thank god! We'll be there in a flash, Glaucus!";
}

if counter = 20{
	speaker = spr_com_jay;
	text = "*whispers harshly* Let's get the hell out of here!";
}

if counter = 21{
	speaker = spr_com_believer;
	text = "*turns to the glowing slug in his hand* Ah - What did you say?";
}

if counter = 22{
	speaker = spr_com_believer;
	text = "They're here to rescue us?";
}

if counter = 23{
	speaker = spr_com_demeter;
	text = "Well, no. But we can take you with us to Garinoka if you'd like.";
}

if counter = 24{
	speaker = spr_com_alan;
	text = "*frees the haggard man from the trap* You're coming with us.";
}

if counter = 25{
	speaker = spr_com_alan;
	text = "Let's go.";
}

if counter = 26{
	speaker = spr_com_believer;
	text = "*cries tears of joy* Nalthuraas! You were right all along!";
}

if counter = 27{
	counter = 28;
	talking = false;
	//fade to black - transition to next room
	var inst = instance_create_depth(0, 0, -999, fader);
	inst.destination_room = black_screen2;
	inst.fadein_speed = 0.0075;
	inst.fadeout_speed = 0.02;
}