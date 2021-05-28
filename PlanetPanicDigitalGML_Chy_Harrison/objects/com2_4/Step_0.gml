if enemy_manager2.game_over = false{
	if gagarin.x > 1800 && gagarin.x < 1900{
		speaker = spr_com_demeter;
		text = "Barely... but I think he'll be fine.";
	}

	if gagarin.x > 4000 && gagarin.x < 4100{
		speaker = spr_com_glaucus;
		text = "He's been pushing himself really hard lately. I'm worried that he might have caught ill.";
	}

	if gagarin.x > 7800 && gagarin.x < 7900{
		speaker = spr_com_demeter;
		text = "Sick, huh? He has been coughing more than usual... Well? Let's test his blood and see if he has anything!";
	}
	
	if gagarin.x > 10400 && gagarin.x < 10500{
		speaker = spr_com_jay;
		text = "Well, hold on. Don't you think that's an invasion of privacy?";
	}
	
	if gagarin.x > 12300 && gagarin.x < 12400{
		speaker = spr_com_demeter;
		text = "If he's sick, it could endanger us all! We have a right to know.";
	}
	
	if gagarin.x > 14000 && gagarin.x < 14100{
		speaker = spr_com_demeter;
		text = "What in the world...?";
	}
	
	if gagarin.x > 16000 && gagarin.x < 16100{
		speaker = spr_com_demeter;
		text = "I've never seen anything like this.";
	}
	
	if gagarin.x > 17200 && gagarin.x < 17300{
		speaker = spr_com_jay;
		text = "Alright. I'm right outside the crash site. Talk to you soon.";
		alarm[1] = room_speed * 3;
	}
}