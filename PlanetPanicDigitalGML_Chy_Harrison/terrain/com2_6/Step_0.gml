if enemy_manager2.game_over = false{
	if gagarin.x > 22200 && gagarin.x < 22300{
		speaker = spr_com_jay;
		text = "Only from its main body. Luckily, these small fries go down easily.";
	}
	
	if gagarin.x > 21750 && gagarin.x < 21850{
		talking = false;
	}

	if gagarin.x > 20600 && gagarin.x < 20700{
		talking = true;
		speaker = spr_com_glaucus;
		text = "This planet...";
	}

	if gagarin.x > 19600 && gagarin.x < 19700{
		talking = false;
	}
	
	if gagarin.x > 18700 && gagarin.x < 18800{
		talking = true;
		speaker = spr_com_glaucus;
		text = "Doesn't it remind you all of Earth?";
	}
	
	if gagarin.x > 18100 && gagarin.x < 18200{
		speaker = spr_com_demeter;
		text = "I had that thought as well. There are a few pictures and artistic renditions of our old home world back on Attis...";
	}
	
	if gagarin.x > 16700 && gagarin.x < 16800{
		speaker = spr_com_glaucus;
		text = "Why don't we go sight-seeing at the museum once we return?";
	}
	
	if gagarin.x > 15500 && gagarin.x < 15600{
		speaker = spr_com_alan;
		text = "*chuckle*";
	}
	
	if gagarin.x > 14700 && gagarin.x < 14800{
		speaker = spr_com_glaucus;
		text = "Was that too forward...?";
	}
	
	if gagarin.x > 13500 && gagarin.x < 13600{
		speaker = spr_com_alan;
		text = "No... You just reminded me of someone.";
	}
	
	if gagarin.x > 12100 && gagarin.x < 12200{
		speaker = spr_com_jay;
		text = "I like the idea. We could do it after we get drunk-";
	}
}