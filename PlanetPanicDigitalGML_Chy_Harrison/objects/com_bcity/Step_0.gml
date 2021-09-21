//intro
if counter = 1{
	speaker = spr_com_blank;
	text = "Woah there, buddy! There are bandits in the main square. You should leave at once!";
}

if counter = 2{
	speaker = spr_com_blank;
	text = "Everybody shuts themselves inside during times like these... Don't try to be a hero!";
}

if counter = 3{
	counter = 0;
	talking = false;
	player.incontrol = true;
}

//spawn reinforcements
if kill_count > 0 && canTrigger{
	canTrigger = false;
	alarm[1] = true;
}
//defeat first wave
if kill_count = 8{
	kill_count = 9;
	counter = 4;
	alarm[0] = room_speed * 1;
}

if counter = 4{
	speaker = spr_com_blank;
	text = "[Bandits shout at eachother over the commlink: ]";
}

if counter = 5{
	counter = 6;
	instance_create_layer(4000, 2800, "enemies", hull_breaker_bcity);
	instance_create_layer(7300, 3000, "enemies", hull_breaker_bcity);
}

if counter = 6{
	speaker = spr_com_blank;
	text = "Who the hell is that!? Don't tell me it's--";
}

if counter = 7{
	speaker = spr_com_blank;
	text = "Totolsk should be screwin' Ralaxia's men over by the blackhole-- this is someone else...!";
}

if counter = 8{
	speaker = spr_com_blank;
	text = "You said the outskirts weren't protected! Morons! Just throw everything we've got left at him!";
}

if counter = 9{
	speaker = spr_com_glaucus;
	text = "Bullets will only scratch those ships' heavy armor. You'll need to apply considerably more force to make them vulnerable.";
}

if counter = 10{
	speaker = spr_com_jay;
	text = "Yeah, but we got nothin' but shells.";
}

if counter = 11{
	speaker = spr_com_demeter;
	text = "Screw it, just ram into them!";
}

if counter = 12{
	counter = 0;
	talking = false;
	player.incontrol = true;
	second_phase = true;
}

if kill_count2 = 2{
	kill_count2 = 3;
	alarm[0] = room_speed * 1;
	counter = 13;
}

if counter = 13{
	speaker = spr_com_blank;
	text = "[The stranger's voice returns over the commlink: ]";
}

if counter = 14{
	speaker = spr_com_blank;
	text = "My god-- you slew them all! You must be with the Coalition.";
}

//decision
if counter = 15{
	speaker = spr_com_blank;
	text = "My god-- you slew them all! You must be with the Coalition.";
	decision = true;
}

if counter = 16{
	if choice = 0{
		speaker = spr_com_alan;
		text = "You've got a good view of the blackhole from here. Did you see when it appeared?";
	}
	if choice = 1{
		speaker = spr_com_alan;
		text = "Those bandits mentioned Totolsk. Do you know who that is?";
	}
	if choice = 2{
		speaker = spr_com_alan;
		text = "That blackhole marks the path toward Garinoka. We should get going.";
	}
	decision = false;
}
//

if counter = 17{
	if choice = 0{
		speaker = spr_com_blank;
		text = "It began as a small cut some days back, then out of nowhere, as if with pliers, it began to open up. I feel like I might go crazy just from looking at it.";
	}
	if choice = 1{
		speaker = spr_com_blank;
		text = "*Gasp* You're not supposed to speak his name! The Coalition will send you to him!";
	}
	if choice = 2{
		counter = 0;
		talking = false;
		player.incontrol = true;
		bcity_exit.available = true;
	}
}

if counter = 18{
	if choice = 0{
		speaker = spr_com_blank;
		text = "The people in the outskirts town believe that it's a god coming to save us from an apocolyptic war, but you know the real truth, don't you?";
	}
	if choice = 1{
		speaker = spr_com_blank;
		text = "He lives for battling pirates and punishing traitors. I can only imagine what he does to the people he captures.";
	}
}

if counter = 19{
	if choice = 0{
		choice = 0;
		counter = 14;
	}
	if choice = 1{
		speaker = spr_com_alan;
		text = "Someone needs to talk some sense into him.";
	}
}

if counter = 20{
	choice = 0;
	counter = 14;
}

//decision: choosing
if decision{
	if keyboard_check_pressed(ord("D")) && choice < 2{
		choice += 1;
	}

	if keyboard_check_pressed(ord("A")) && choice > 0{
		choice -= 1;
	}
}