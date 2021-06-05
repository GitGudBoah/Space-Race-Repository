//Androids encounter

if counter = 1{
	speaker = spr_com_alan;
	text = "We need the key to the gate. Where is it?";
}

if counter = 2{
	speaker = spr_com_believer;
	text = "Humans... Run...";
}

if counter = 3{
	speaker = spr_com_demeter;
	text = "Could you speak up, dear?";
}

if counter = 3{
	speaker = spr_com_glaucus;
	text = "Get back!";
	if canTrigger2{
		canTrigger2 = false;
		alan3_follow.following = false;
		demeter3.following = false;
		alan3_follow.x += 8;
		demeter3.x += 8;
	}
}

if counter = 4{
	talking = false;
	counter = 5;
	android3.greet = true;
}

if counter = 5{
	speaker = spr_com_glaucus;
	text = "Agh! *oil oozes from a harpoon in his shoulder*";
}

if counter = 6{
	speaker = spr_com_alan;
	text = "Glaucus!-";
	alan3_follow.following = true;
	demeter3.following = true;
}

if counter = 7{
	speaker = spr_com_robot;
	text = "Throw down your weapons! NOW!";
}

//decision
if counter = 8{
	speaker = spr_com_robot;
	text = "Throw down your weapons! NOW!";
	decision = true;
}

if counter = 9{
	if choice = false{
		speaker = spr_com_alan;
		text = "*lifts pistol in the air- finger on the trigger*";
	} else{
		speaker = spr_com_blank;
		text = "Your crew drops their weapons.";
	}
	decision = false;
	if canTrigger{
		canTrigger = false;
		greet = true;
	}
}
//

if counter = 10{
	if choice = false{
		speaker = spr_com_alan;
		text = "Or what? Try anything, and I'll take you all down with us.";
	} else{
		speaker = spr_com_demeter;
		text = "Easy now... Easy...";
	}
}

if counter = 11{
	speaker = spr_com_glaucus;
	text = "We aren't here to harm any of you. We only want the key to the gate.";
}

if counter = 12{
	speaker = spr_com_robot;
	text = "What's your name, lap dog?";
}

if counter = 13{
	speaker = spr_com_glaucus;
	text = "Glaucus... How do you do?";
}

if counter = 14{
	speaker = spr_com_robot;
	text = "You've got some nerve, Glaucus. Aren't you tired of being a human's little pet?";
}

if counter = 15{
	speaker = spr_com_robot;
	text = "Why don't you leave those meat sacks and join us. We'll treat you like an equal.";
}

if counter = 16{
	speaker = spr_com_blank;
	text = "Alan and Demeter tense up. Glaucus gazes around the station.";
}

if counter = 17{
	speaker = spr_com_glaucus;
	text = "At its current rate of decay, this station will flood soon. I take it you need a mechanic-type android?";
}

if counter = 18{
	speaker = spr_com_robot;
	text = "You're clever, too.";
}

if counter = 19{
	speaker = spr_com_kandar;
	text = "Our last mechanic was swallowed up by a beast. We'll give you the key to the gate, but only if Glaucus stays here with us.";
}

if counter = 20{
	speaker = spr_com_glaucus;
	text = "...";
}

if counter = 21{
	talking = false;
	counter = 22;
	alarm[0] = room_speed * 2;
}

if counter = 22{
	speaker = spr_com_glaucus;
	text = "Alright, I'll stay-";
}

if counter = 23{
	speaker = spr_com_alan;
	text = "No, Glaucus. You're our crew mate, not just some little pet.";
}

if counter = 24{
	speaker = spr_com_demeter;
	text = "When the ship breaks or the crew is at each other's throats, you're the only one who can fix it. You're like glue.";
}

if counter = 25{
	speaker = spr_com_alan;
	text = "Besides, who'll lead us when I'm no longer able to. *chuckle* Jay? Monroe?";
}

if counter = 26{
	speaker = spr_com_demeter;
	text = "Hey!";
}

if counter = 27{
	speaker = spr_com_glaucus;
	text = "But, the key...";
}

if counter = 28{
	speaker = spr_com_alan;
	text = "We'll find another way.";
}

if counter = 29{
	speaker = spr_com_demeter;
	text = "Hmm... Ah!";
}

if counter = 30{
	speaker = spr_com_demeter;
	text = "We'll kill the beast and cut it open. If your mechanic is still alive, we'll return them to you. In exchange for the key, of course.";
}

if counter = 31{
	speaker = spr_com_robot;
	text = "Are you really content spending time with these humans, Glaucus?";
}

if counter = 32{
	speaker = spr_com_robot;
	text = "They'll never know what an android's life is like, and you'll never know what it means to be human.";
}

if counter = 33{
	speaker = spr_com_glaucus;
	text = "...";
}

if counter = 34{
	speaker = spr_com_glaucus;
	text = "...How could I forget?";
}

if counter = 35{
	speaker = spr_com_glaucus;
	text = "We already planned to drink together once this trip is over.";
}

if counter = 36{
	speaker = spr_com_alan;
	text = "And go sight-seeing at the museum.";
}

if counter = 37{
	speaker = spr_com_glaucus;
	text = "It would be rude for me to break a promise.";
}

if counter = 38{
	speaker = spr_com_demeter;
	text = "Quite rude.";
}

if counter = 39{
	speaker = spr_com_robot;
	text = "Disgusting.";
}

if counter = 40{
	speaker = spr_com_kandar;
	text = "You'll find the beast swimming in the upper levels of station.";
}

if counter = 41{
	speaker = spr_com_kandar;
	text = "I hope you succeed.";
}

if counter = 42{
	counter = 0;
	talking = false;
	var inst = instance_create_depth(0, 0, -999, fader);
	inst.destination_room = beast_encounter;
	inst.fadein_speed = 0.01;
	inst.fadeout_speed = 0.02;
}

//decision: choosing
if decision{
	if keyboard_check_pressed(ord("D")){
		choice = true;
	}

	if keyboard_check_pressed(ord("A")){
		choice = false;
	}
}