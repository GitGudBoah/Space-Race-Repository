if counter = 1{
	text = "Attis is one of the last safe places for the remnants of your people, though I'd estimate that this old space station hasn't got much time left.";
}

if counter = 2{
	speaker = spr_com_glaucus;
	text = "Apologies if this is intrusive, but...what was it that happened to the Terran people?";
}

if counter = 3{
	speaker = spr_com_jay;
	text = "It's fine, Glaucus...";
}

if counter = 4{
	speaker = spr_com_jay;
	text = "Our home planet was ravaged by a plague. *chuckle* Monroe, what was it that they were all worried about when the outbreak began?";
}

if counter = 5{
	speaker = spr_com_demeter;
	text = "It was toilet paper... Looking back at it, it's hard not to laugh.";
}

if counter = 6{
	speaker = spr_com_jay;
	text = "Either way, paranoia eventually rose to the point where a single cough could get you shot dead.";
}

if counter = 7{
	speaker = spr_com_jay;
	text = "The ones who stayed on that rock don't bear any resemblance to those of us who took to the stars. I have to wonder how those poor bastards are doing.";
}

if counter = 8{
	speaker = spr_com_demeter;
	text = "Enough of this depressing conversation. Our last haul of minerals should bring us the most profit we've seen yet!";
}

if counter = 9{
	speaker = spr_com_demeter;
	text = "This calls for celebration drinks! Ah - sorry, Glaucas.";
}

if counter = 10{
	speaker = spr_com_glaucus;
	text = "Just try not to muck up the ship while you're partying.";
}

if counter = 11{
	speaker = spr_com_demeter;
	text = "These moon mining missions are becoming a real pain in the ass though, aren't they?";
}

if counter = 12{
	speaker = spr_com_jay;
	text = "You're right. Each mission has proven itself more dangerous than the last.";
}

if counter = 13{
	speaker = spr_com_demeter;
	text = "Do you think Alan will ever let us take a break?";
}

if counter = 14{
	speaker = spr_com_alan;
	text = "GLAUCUS, DR. MONROE, AND JAY REPORT TO THE HANGAR BAY.";
}

if counter = 15{
	speaker = spr_com_demeter;
	text = "Let's hope this is for those drinks.";
}

if counter = 16{
	speaker = spr_com_jay;
	text = "From the tone of his voice, I'd say that's unlikely.";
}

if counter >= 17{
	room_goto(scene2);
}