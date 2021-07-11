// Bar - Hal-9

if counter = 1{
	speaker = spr_com_kandar;
	text = "Well, if it isn't Attis' highest ranking officer! Shouldn't you be off fighting for humanity or something?";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "Don't give me that- I've been retired for over a decade.";
}

if counter = 3{
	speaker = spr_com_citizen1;
	text = "Seems like it. You must be tired from all that responsibility. Need someone to relax with?";
}

if counter = 4{
	speaker = spr_com_kandar;
	text = "Don't take the bait! She's robbed every man on this station.";
}

if counter = 5{
	speaker = spr_com_jay;
	text = "Pour us some drinks. We've been on a rough journey.";
}

if counter = 6{
	speaker = spr_com_demeter;
	text = "Pour me twice as much!";
}

if counter = 7{
	speaker = spr_com_alan;
	text = "We shouldn't be doing this...";
}

if counter = 8{
	speaker = spr_com_demeter;
	text = "The lady is right- you need to take a break from all your responsibilities. Come on, you deserve it.";
}

//decision
if counter = 9{
	speaker = spr_com_demeter;
	text = "The lady is right- you need to take a break from all your responsibilities. Come on, you deserve it.";
	decision = true;
}

if counter = 10{
	if choice = 0{
		speaker = spr_com_alan;
		text = "Pour me half a glass- no, a quarter.";
	}
	if choice = 1{
		speaker = spr_com_alan;
		text = "I'm running out of time.";
	}
	decision = false;
}
//

if counter = 11{
	if choice = 0{
		speaker = spr_com_blank;
		text = "Jay and Demeter rejoice: AW, HELL YEAH!";
		if canTrigger{
			canTrigger = false;
			view_camera[0] = camera_create_view(camera_shake.view_x, camera_shake.view_y, 2100, 1500, 0, -1, -1, -1, 1050, 750);
			camera_shake.range = 50;
		}
	}
	if choice = 1{
		speaker = spr_com_demeter;
		text = "Right. I'm sorry.";
	}
}

if counter = 12{
	if choice = 0{
		speaker = spr_com_demeter;
		text = "This is a momentous achievement!";
	}
	if choice = 1{
		speaker = spr_com_jay;
		text = "I guess that's why Monroe and I would make crappy leaders, huh?";
	}
}

if counter = 13{
	if choice = 0{
		speaker = spr_com_alan;
		text = "You're paying.";
	}
	if choice = 1{
		speaker = spr_com_demeter;
		text = "Speak for yourself.";
	}
}

if counter = 14{
	if choice = 0{
		speaker = spr_com_demeter;
		text = "Aw...";
	}
	if choice = 1{
		speaker = spr_com_alan;
		text = "Let's go find Titania.";
	}
}

if counter = 15{
	if choice = 0{
		talking = false;
		counter = 16;
		var inst = instance_create_depth(0, 0, -999, fader2);
		inst.fadein_speed = 0.0075;
		inst.fadeout_speed = 0.02;
		inst.room_swap_delay = 2;
	}
	if choice = 1{
		counter = 0;
		talking = false;
		enemy_manager3.target.incontrol = true;
	}
}

//drinking conversation
if counter = 16{
	speaker = spr_com_demeter;
	text = "...ever since I was caught, I haven't been invited to another science convention again!";
}

if counter = 17{
	speaker = spr_com_kandar;
	text = "I'm surprised you didn't get locked up!";
}

if counter = 18{
	speaker = spr_com_jay;
	text = "Got any stories to share from your time as an officer, Alan?";
	text1 = "The Coalition...";
	text2 = "The Pirate Planet...";
	text3 = "*Leave*";
}

//decision
if counter = 19{
	speaker = spr_com_jay;
	text = "Got any stories to share from your time as an officer, Alan?";
	decision = true;
}

if counter = 20{
	if choice = 0{
		speaker = spr_com_alan;
		text = "Aside from us, there are four other known races in the universe- four planets that have formed a coalition to battle threats to large for any of them to handle alone:";
	}
	if choice = 1{
		speaker = spr_com_alan;
		text = "The Dread Empress and her pirate fleet used to be an even bigger pain in the ass than they are now.";
	}
	if choice = 2{
		speaker = spr_com_alan;
		text = "Let's go find Titania.";
	}
	decision = false;
}
//

if counter = 21{
	if choice = 0{
		speaker = spr_com_alan;
		text = "The Garinokans, the Proud Race of Astith, the Oninaki, and the Ryescence.";
	}
	if choice = 1{
		speaker = spr_com_alan;
		text = "The Terran and the Oninaki visited Tartau, the home planet of Ralaxia and her fleet, to negotiate about borders.";
	}
	if choice = 2{
		speaker = spr_com_jay;
		text = "And turn some pirate brains to mush.";
	}
}

if counter = 22{
	if choice = 0{
		speaker = spr_com_alan;
		text = "As an officer, I helped the Terran take steps to become the next race in the Coalition, and eventually";
	}
	if choice = 1{
		speaker = spr_com_alan;
		text = "Unknown to our people, the Oninaki planned to assassinate Ralaxia. Their attempt failed.";
	}
	if choice = 2{
		speaker = spr_com_kandar;
		text = "Are you ready to pay or what?";
	}
}

if counter = 23{
	if choice = 0{
		speaker = spr_com_alan;
		text = "I was able to attend a meeting among the other four races. It was held on Garinoka.";
	}
	if choice = 1{
		speaker = spr_com_alan;
		text = "We had to escape the pirate planet, which had turned hostile against us. The air was so thick with bloody mist during that time, you could choke on it.";
	}
	if choice = 2{
		speaker = spr_com_demeter;
		text = "Yeah, yeah... *places cash on the counter*";
	}
}

if counter = 24{
	if choice = 0{
		speaker = spr_com_alan;
		text = "At this meeting, we discussed the potential of the Terran and made plans to find a suitable world for the people of Attis to inhabit.";
	}
	if choice = 1{
		speaker = spr_com_alan;
		text = "We suffered heavy casualties. Their bodies remain on Tartau to this day- a punishment for breaking Ralaxia's trust.";
	}
	if choice = 2{
		counter = 0;
		talking = false;
		enemy_manager3.target.incontrol = true;
	}
}

if counter = 25{
	if choice = 0{
		speaker = spr_com_alan;
		text = "One Garinokan ambassador volunteered to reside on Attis- to watch over us and aid in our growth. She became my wife...";
	}
	if choice = 1{
		speaker = spr_com_alan;
		text = "That's where my wife is buried...";
	}
	if choice = 2{
		speaker = spr_com_alan;
		text = "Let's go find Titania.";
	}
}

if counter = 26{
	if choice = 0{
		speaker = spr_com_alan;
		text = "... *gazes into empty glass*";
	}
	if choice = 1{
		speaker = spr_com_demeter;
		text = "You get sad when you get drunk, you know that?";
	}
	if choice = 2{
		speaker = spr_com_alan;
		text = "Let's go find Titania.";
	}
}

if counter = 27{
	if choice = 0{
		speaker = spr_com_jay;
		text = "What a lucky dame.";
	}
	if choice = 1{
		speaker = spr_com_alan;
		text = "It seems that tragedy is the only companion that can survive by my side.";
	}
	if choice = 2{
		speaker = spr_com_alan;
		text = "Let's go find Titania.";
	}
}

if counter = 28{
	if choice = 0{
		speaker = spr_com_alan;
		text = "No... I was the lucky one.";
	}
	if choice = 1{
		speaker = spr_com_jay;
		text = "Bullshit. You've got us!";
	}
	if choice = 2{
		speaker = spr_com_alan;
		text = "Let's go find Titania.";
	}
}

if counter = 29{
	choice = 0;
	counter = 19;
}

//decision: choosing
if decision{
	if text3 = "*Leave*"{
		if keyboard_check_pressed(ord("D")) && choice < 2{
			choice += 1;
		}

		if keyboard_check_pressed(ord("A")) && choice > 0{
			choice -= 1;
		}
	} else{
		if keyboard_check_pressed(ord("D")) && choice = 0{
			choice += 1;
		}

		if keyboard_check_pressed(ord("A")) && choice = 1{
			choice -= 1;
		}
	}
}