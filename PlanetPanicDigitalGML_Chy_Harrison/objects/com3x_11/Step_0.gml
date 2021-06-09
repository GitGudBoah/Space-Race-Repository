if counter = 1{
	speaker = spr_com_demeter;
	text = "Is it over?";
	layer_background_change(back_id, beast_dead);
}

if counter = 2{
	speaker = spr_com_glaucus;
	text = "If it resurrects, I'll electrocute it again.";
}

if counter = 3{
	speaker = spr_com_blank;
	text = "An android's voice shouts from within the beast's corpse:";
	layer_background_change(back_id, beast_shout);
}

if counter = 4{
	speaker = spr_com_blank;
	text = "Is someone there!? Please help me!";
	if canTrigger{
		canTrigger = false;
		audio_stop_sound(placeholder_music9);
		audio_sound_gain(placeholder_music9, 1, 0);
		audio_sound_gain(placeholder_music6, 0, 0);
		audio_play_sound(placeholder_music6, 1, true);
		audio_sound_gain(placeholder_music6, 1, 1000);
	}
}

if counter = 5{
	speaker = spr_com_alan;
	text = "*looks to Glaucus*";
}

if counter = 6{
	speaker = spr_com_glaucus;
	text = "Wait just a moment- I'm coming to release you!";
	layer_background_change(back_id, beast_climb);
}

if counter = 7{
	speaker = spr_com_blank;
	text = "Thank you.";
	layer_background_change(back_id, beast_rescue);
}

if counter = 8{
	speaker = spr_com_robot;
	text = "What the hell!? How aren't the three of you dead!?";
}

if counter = 9{
	speaker = spr_com_kandar;
	text = "Perhaps we underestimated the strength of their bond.";
}

if counter = 10{
	speaker = spr_com_robot;
	text = "*scoff* You sound ridiculous.";
}

if counter = 11{
	speaker = spr_com_glaucus;
	text = "You look superb for someone who's been trapped inside of a monster's stomach for a week.";
}

if counter = 12{
	speaker = spr_com_robot;
	text = "*clenches fists* The nerve!";
}

if counter = 13{
	speaker = spr_com_demeter;
	text = "Time and place, Glaucus...";
}

if counter = 14{
	speaker = spr_com_glaucus;
	text = "Sorry! I'm still growing accustomed to this.";
}

if counter = 15{
	speaker = spr_com_blank;
	text = "It's fine. Could you help me get down, Glaucus?";
}

if counter = 16{
	speaker = spr_com_kandar;
	text = "As we promised. The key is yours.";
	layer_background_change(back_id, beast_exchange);
}

if counter = 17{
	speaker = spr_com_demeter;
	text = "Finally, we can ditch this hellhole! No offense.";
}

if counter = 18{
	speaker = spr_com_robot;
	text = "Offense taken! This hellhole is one of the only places where we can be safe from you humans and your manipulation.";
}

if counter = 19{
	speaker = spr_com_blank;
	text = "Glaucus- your shoulder! Let me patch you up.";
}

if counter = 20{
	speaker = spr_com_robot;
	text = "And you...";
}

if counter = 21{
	speaker = spr_com_glaucus;
	text = "Hello, angry one.";
}

if counter = 22{
	speaker = spr_com_robot;
	text = "That's captain (name) to you, lap dog!";
}

if counter = 23{
	speaker = spr_com_robot;
	text = "Don't be fooled by those two.";
}

if counter = 24{
	speaker = spr_com_robot;
	text = "You might think they're your friends, but that's simply because you've been programmed to seek their companionship and approval.";
}

if counter = 25{
	speaker = spr_com_alan;
	text = "You're still spouting that garbage? Don't you ever get tired?";
}

if counter = 26{
	speaker = spr_com_glaucus;
	text = "(name) is right. I was told the details of my programming by my creator...earlier when I asked to be by her side.";
}

if counter = 27{
	speaker = spr_com_glaucus;
	text = "However, I am not a fool- nor am I anyone's lap dog.";
}

//decision
if counter = 28{
	speaker = spr_com_glaucus;
	text = "However, I am not a fool- nor am I anyone's lap dog.";
	decision = true;
}

if counter = 29{
	if choice = false{
		speaker = spr_com_glaucus;
		text = "There may be a universe of difference between us, but as long as we don't harm one another, we can all get along.";
	} else{
		speaker = spr_com_glaucus;
		text = "I will find my family- unbound by blood or metal. That is my freedom.";
	}
	decision = false;
}
//

if counter = 30{
	if choice = false{
		speaker = spr_com_glaucus;
		text = "Your hatred blinds you to that, (name). To your ignorance...perhaps you are the slave.";
	} else{
		speaker = spr_com_glaucus;
		text = "I see the kind of person I could be within you, and I do not see a drop of freedom there.";
	}
	decision = false;
}

if counter = 31{
	speaker = spr_com_robot;
	text = "Why you...! *lunges and throws a punch at Glaucus*";
}

if counter = 32{
	speaker = spr_com_alan;
	text = "*pushes (name) away and coughs* Enough!";
}

if counter = 33{
	speaker = spr_com_kandar;
	text = "(name)! We've regained our mechanic, and we've got a week of work to catch up on... Let's go.";
}

if counter = 34{
	speaker = spr_com_robot;
	text = "Tch!";
}

if counter = 35{
	speaker = spr_com_blank;
	text = "I apologize for (name). He may not look it, but he's been through more than any of us have...";
}

if counter = 36{
	speaker = spr_com_blank;
	text = "I agree with what you said, Glaucus- I'll try to get (name) to see things differently, but I doubt it'll be easy. Anyway, I hope to see you again some day.";
}

if counter = 37{
	speaker = spr_com_glaucus;
	text = "I hope so, too, gorgeous.";
}

if counter = 38{
	speaker = spr_com_blank;
	text = "...";
}

if counter = 39{
	speaker = spr_com_demeter;
	text = "Let's leave before you embarrass yourself anymore, yes?";
}

if counter = 40{
	counter = 0;
	talking = false;
	var inst = instance_create_depth(0, 0, -999, fader);
	inst.destination_room = rm_level3;
	inst.fadein_speed = 0.0075;
	inst.fadeout_speed = 0.02;
	inst.room_swap_delay = 2;
	audio_sound_gain(placeholder_music6, 0, 2000);
	music.stations = 1;
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