//Dahlia convo 1

if counter2 == 0{
	if counter = 1{
		speaker = spr_com_dahlia;
		text = "I knew you would come.";
	}

	if counter = 2{
		speaker = spr_com_alan;
		text = "You cleared out the whole museum? Why not call me some place private, instead?";
	}

	if counter = 3{
		speaker = spr_com_dahlia;
		text = "This is a fitting location for the topic of our discussion.";
	}

	if counter = 4{
		speaker = spr_com_dahlia;
		text = "Your situation has been very useful to my research. You deserve to know what I've learned over the years.";
	}

	if counter = 5{
		speaker = spr_com_dahlia;
		text = "Perhaps it will help you feel better after everything that's happened.";
	}

	if counter = 6{
		speaker = spr_com_dahlia;
		text = "So? Are you interested?";
	}

	//decision
	if counter = 7{
		speaker = spr_com_dahlia;
		text = "So? Are you interested?";
		decision = true;
	}

	if counter = 8{
		if choice = false{
			speaker = spr_com_alan;
			text = "Tell me what happened to my daughter.";
		} else{
			speaker = spr_com_alan;
			text = "No. I couldn't care less about your research.";
		}
		decision = false;
	}
	//

	if counter = 9{
		if choice = false{
			speaker = spr_com_dahlia;
			text = "The plague that ravaged our home world...";
		} else{
			speaker = spr_com_alan;
			text = "I'm here for your business offer. That's it.";
		}
	}

	if counter = 10{
		if choice = false{
			speaker = spr_com_dahlia;
			text = "They called it COVID-19. The coronavirus.";
		} else{
			speaker = spr_com_dahlia;
			text = "*frowns disappointedly* Very well.";
		}
	}

	if counter = 11{
		if choice = false{
			speaker = spr_com_dahlia;
			text = "It infected the respiratory tract and damaged the lungs. Symptoms included coughing, shortness of breath, and pneumonia.";
		} else{
			speaker = spr_com_dahlia;
			text = "Let's move to somewhere more scenic, shall we?";
		}
	}

	if counter = 12{
		if choice = false{
			speaker = spr_com_dahlia;
			text = "Our ancestors were swift to develop a vaccine, but the virus mutated at an even faster rate.";
		} else{
			talking = false;
			alan2.incontrol = true;
			dahlia2.walk = true;
			counter = 13;
		}
	}

	if counter = 13{
		speaker = spr_com_dahlia;
		text = "By the time people began escaping Earth, if you caught the disease, your lungs would rupture and burst within an hour.";
	}

	if counter = 14{
		speaker = spr_com_alan;
		text = "Would you bleed from your face? Are you saying that Alice-...that my daughter died from catching that illness?";
	}

	if counter = 15{
		speaker = spr_com_dahlia;
		text = "No. She was already infected. You are, and so am I.";
	}

	if counter = 16{
		speaker = spr_com_alan;
		text = "Really? With how much you enjoy talking, you seem quite healthy to me.";
	}

	if counter = 17{
		speaker = spr_com_dahlia;
		text = "Thank you, Alan. However, it's true that I am infected.";
	}

	if counter = 18{
		speaker = spr_com_dahlia;
		text = "All Terran people alive right now are infected with a dormant strain of the virus.";
	}

	if counter = 19{
		speaker = spr_com_dahlia;
		text = "It only activates when you come into contact with Nalthuraas- the universe's inevitable doom...";
	}

	if counter = 20{
		speaker = spr_com_alan;
		text = "Nalthuraas...? I've heard you say that name before.";
	}

	if counter = 21{
		speaker = spr_com_dahlia;
		text = "An alien life form...or perhaps a force of nature we don't yet have the tools to understand. That's a discussion for another time...if you'd like.";
	}

	if counter = 22{
		speaker = spr_com_dahlia;
		text = "The slug that your daughter found on that day... It was a piece of Nalthuraas that the station had been researching.";
	}

	if counter = 23{
		speaker = spr_com_alan;
		text = "...And that's supposed to make me feel better? What a joke.";
	}

	if counter = 24{
		speaker = spr_com_dahlia;
		text = "I haven't gotten to your case yet. Walk with me, would you kindly?";
	}

	if counter = 25{
		counter = 26;
		talking = false;
		alan2.incontrol = true;
		dahlia2.walk = true;
	}
}

//Dahlia convo 2
//When dahlia reaches her next stop, reset counter and switch a variable
//(counter2: determines which dialogue tree to run through).
//set decision text to variables, and change them at the next stop.
if counter2 == 1{
	if counter = 1{
		speaker = spr_com_dahlia;
		text = "Alan, what genre of music do you prefer?";
		choice = false;
	}

	if counter = 2{
		speaker = spr_com_alan;
		text = "I don't appreciate this, Dahlia. You and I aren't friends; I strongly prefer to keep it that way.";
	}

	if counter = 3{
		speaker = spr_com_dahlia;
		text = "If it embarasses you that much, you don't have to tell me. But set the mood, will you?";
	}

//decision
	if counter = 4{
		speaker = spr_com_dahlia;
		text = "If it embarasses you that much, you don't have to tell me. But set the mood, will you?";
		text1 = "*Play a song*";
		text2 = "I prefer silence.";
		decision = true;
	}

	if counter = 5{
		if choice = false{
			talking = false;
			counter = 6;
			alan2.incontrol = true;
			audio_sound_gain(placeholder_music6, 0, 2000);
			music2.available = true;
			music2_2.available = true;
			music2_3.available = true;
			music2_4.available = true;
			music.song_played = true;
		} else{
			speaker = spr_com_alan;
			text = "I prefer silence.";
		}
		decision = false;
	}
//

	if counter = 6{
		speaker = spr_com_dahlia;
		text = "Fair enough.";
	}

	if counter = 7{
		counter2 = 2;
		counter = 2;
	}
}

if counter2 == 2{
	if counter = 1{
		music2.available = false;
		music2_2.available = false;
		music2_3.available = false;
		music2_4.available = false;
		if m_counter = 1{
			speaker = spr_com_dahlia;
			text = "Now this is catchy... People back then had an interesting way of music.";
		}
		if m_counter = 2{
			speaker = spr_com_dahlia;
			text = "These lyrics are quite blunt, yet they empower you with confidence.";
		}
		if m_counter = 3{
			speaker = spr_com_dahlia;
			text = "Hmm... I think I prefer modern music to this one...";
		}
		if m_counter = 4{
			speaker = spr_com_dahlia;
			text = "West Virginia...? I wonder if that place still looks as he describes it.";
		}
	}

	if counter = 2{
		speaker = spr_com_alan;
		text = "So, the virus within me. Is it active?";
	}

	if counter = 3{
		speaker = spr_com_dahlia;
		text = "Seeing as how you aren't a blood-oozing corpse on the floor, I don't need lab equipment to deduce that yours is functionally dormant.";
	}
	
	if counter = 4{
		speaker = spr_com_dahlia;
		text = "Interestingly though, the virus within you did partially activate due to your close proximity to Nalthuraas.";
	}
	
	if counter = 5{
		speaker = spr_com_dahlia;
		text = "Your strain of COVID-19 is activating at an extremely slow rate- but a consistent rate nonetheless.";
	}
	
	if counter = 6{
		speaker = spr_com_dahlia;
		text = "*places hand under chin* I tried to replicate your infection within other test subjects, but theirs just activated completely.";
	}
	
	if counter = 7{
		speaker = spr_com_alan;
		text = "Do you feel any remorse for killing those people?";
	}
	
	if counter = 8{
		speaker = spr_com_dahlia;
		text = "They were death row inmates.";
	}
	
	if counter = 9{
		speaker = spr_com_dahlia;
		text = "Alan- your infection is an extremely rare case, but one that has proven essential in learning how the virus works.";
	}
	
	if counter = 10{
		speaker = spr_com_dahlia;
		text = "You could say that Alice finding that slug is what led to this growth in our knowledge about our species.";
	}
	
	if counter = 11{
		speaker = spr_com_dahlia;
		text = "So? Does that make the wound sting a little less?";
		choice = false;
	}

//decision
	if counter = 12{
		speaker = spr_com_dahlia;
		text = "So? Does that make the wound sting a little less?";
		text1 = "Yes";
		text2 = "No";
		decision = true;
	}

	if counter = 13{
		if choice = false{
			speaker = spr_com_alan;
			text = "A little- yes. But I want her death to mean more than that.";
		} else{
			speaker = spr_com_alan;
			text = "No. You must be glad that she's dead though, huh?";
		}
		decision = false;
	}
//

	if counter = 14{
		if choice = false{
			speaker = spr_com_dahlia;
			text = "*smiles*";
		} else{
			speaker = spr_com_dahlia;
			text = "I am. But I'm not the one who killed her, am I? Why don't you point that hostility towards yourself?";
		}
	}

	if counter = 15{
		if choice = false{
			speaker = spr_com_dahlia;
			text = "Then we are on the same page.";
		} else{
			speaker = spr_com_alan;
			text = "You had them burn her alive when she was already suffering...! I can still see her melted eyes...!";
		}
	}

	if counter = 16{
		if choice = false{
			speaker = spr_com_dahlia;
			text = "Come. Let's find a suitable place to discuss business.";
		} else{
			speaker = spr_com_alan;
			text = "Looking at you makes me sick!";
		}
	}

	if counter = 17{
		if choice = false{
			talking = false;
			alan2.incontrol = true;
			dahlia2.image_xscale = -1;
			dahlia2.walk = true;
			counter = 18;
			alan2.canTrigger = true;
			o_Wall3.solid = false;
		} else{
			speaker = spr_com_dahlia;
			text = "You won't have to look at me for much longer.";
		}
	}

	if counter = 18{
		speaker = spr_com_dahlia;
		text = "Come. Let's find a suitable place to discuss business.";
	}
	
	if counter = 19{
		speaker = spr_com_alan;
		text = "...";
	}

	if counter = 20{
		counter = 21;
		talking = false;
		alan2.incontrol = true;
		dahlia2.image_xscale = -1;
		dahlia2.walk = true;
		alan2.canTrigger = true;
		o_Wall3.solid = false;
	}
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