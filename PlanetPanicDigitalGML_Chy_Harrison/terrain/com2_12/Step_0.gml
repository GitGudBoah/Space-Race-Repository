//A note left behind by the believer's crew

if counter = 1{
	speaker = spr_com_blank;
	text = "There's an old note on the table.";
}

//decision
if counter = 2{
	speaker = spr_com_blank;
	text = "There's an old note on the table.";
	decision = true;
}

if counter = 3{
	if choice = false{
		speaker = spr_com_blank;
		text = "The note reads as follows:";
	} else{
		speaker = spr_com_alan;
		text = "Hey...";
	}
	decision = false;
}
//

if counter = 4{
	if choice = false{
		speaker = spr_com_note;
		text = "It's been 16 days since we've been stranded on this hellish planet. We lost our radio with the ship.";
	} else{
		speaker = spr_com_alan;
		text = "I shouldn't have dragged you all into something you didn't sign up for.";
	}
}

if counter = 5{
	if choice = false{
		speaker = spr_com_note;
		text = "*scratched out: If rescue doesn't come soon-*";
	} else{
		speaker = spr_com_alan;
		text = "No more secrets from here on out. You have my word.";
	}
}

if counter = 6{
	if choice = false{
		speaker = spr_com_note;
		text = "Day 17";
	} else{
		speaker = spr_com_demeter;
		text = "Just to be clear: this may be our last mission together, but I'll still help you however I can.";
	}
}

if counter = 7{
	if choice = false{
		speaker = spr_com_note;
		text = "The organic life on this planet is toxic. We lost Claire to find that out.";
	} else{
		speaker = spr_com_jay;
		text = "When did the two of you become so sappy?";
	}
}

if counter = 8{
	if choice = false{
		speaker = spr_com_note;
		text = "The captain says to hold out for just a little longer, but the bastard knows there's only one way we can do that.";
	} else{
		counter = 0;
		talking = false;
		jay2_2.incontrol = true;
		audio_play_sound(snd_tentacle_attack, 1, false);
		var inst = instance_create_layer(1950, 1024, "Instances", believer);
		inst.image_xscale = -1;
		inst.reloading = false;
		inst.hide = false;
		inst.boss_fight = true;
	}
}

if counter = 9{
	speaker = spr_com_note;
	text = "Day 18";
}

if counter = 10{
	speaker = spr_com_note;
	text = "Those damn insects came for us again today.";
}

if counter = 11{
	speaker = spr_com_note;
	text = "We had to give them Johnny to buy time to set up traps. I don't think I'll ever forget the sound of his screams.";
}

if counter = 12{
	speaker = spr_com_note;
	text = "Day 19";
}

if counter = 13{
	speaker = spr_com_note;
	text = "The captain thinks he's invincible because he's wearing some special hazmat suit he stole back on Attis.";
}

if counter = 14{
	speaker = spr_com_note;
	text = "He found what looks like a slug. He keeps talking to it.";
}

if counter = 15{
	speaker = spr_com_note;
	text = "He says it told him that rescue is on the way. The old man's lost his mind for sure.";
}

if counter = 16{
	speaker = spr_com_note;
	text = "Day 20";
}

if counter = 17{
	speaker = spr_com_note;
	text = "The captain says we aren't going to die on this planet.";
}

if counter = 18{
	speaker = spr_com_note;
	text = "What an idiot. The only way to survive is to eat each other.";
}

if counter = 19{
	speaker = spr_com_note;
	text = "Day 21";
}

if counter = 20{
	speaker = spr_com_note;
	text = "We ate. We can't leave the building, so we buried his bones by the entrance.";
}

if counter = 21{
	speaker = spr_com_note;
	text = "*circled dozens of times: He can keep watch*";
}

if counter = 22{
	speaker = spr_com_note;
	text = "Day 32";
}

if counter = 23{
	speaker = spr_com_note;
	text = "We were fleeing arrest by the Attis authority when we crashed here. At this point, I pray to god that they find us.";
}

if counter = 24{
	speaker = spr_com_note;
	text = "Day 36";
}

if counter = 25{
	speaker = spr_com_note;
	text = "Soon, we'll have to eat another of our own...but what's the point of living like this?";
}

if counter = 26{
	speaker = spr_com_note;
	text = "I'm starting to think that Claire was the lucky one.";
}

if counter = 27{
	speaker = spr_com_note;
	text = "Day 39";
}

if counter = 28{
	speaker = spr_com_note;
	text = "We decided to end it. We'll all eat the plant that Claire ate. Maybe we can ask her for forgiveness.";
}

if counter = 29{
	talking = false;
	alarm[0] = room_speed * 1;
	counter = 30;
}

if counter = 30{
	speaker = spr_com_alan;
	text = "Hey...";
}

if counter = 31{
	speaker = spr_com_alan;
	text = "I shouldn't have dragged you all into something you didn't sign up for.";
}

if counter = 32{
	speaker = spr_com_alan;
	text = "No more secrets from here on out. You have my word.";
}

if counter = 33{
	speaker = spr_com_demeter;
	text = "Just to be clear: this may be our last mission together, but I'll still help you however I can.";
}

if counter = 34{
	speaker = spr_com_jay;
	text = "When did the two of you become so sappy?";
}

if counter = 35{
	counter = 36;
	talking = false;
	jay2_2.incontrol = true;
	audio_play_sound(snd_tentacle_attack, 1, false);
	var inst = instance_create_layer(1950, 1024, "Instances", believer);
	inst.image_xscale = -1;
	inst.reloading = false;
	inst.hide = false;
	inst.boss_fight = true;
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