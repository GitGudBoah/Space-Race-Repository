if counter = 1{
	speaker = spr_com_alan;
	text = "We need to trade some of our loot for resources to keep the station running.";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "We're setting a course for the planet Garinoka.";
}

if counter = 3{
	speaker = spr_com_jay;
	text = "...";
}

if counter = 4{
	speaker = spr_com_alan;
	text = "Any complaints?";
}

if counter = 5{
	speaker = spr_com_demeter;
	text = "So drinks after...?";
}

if counter = 6{
	speaker = spr_com_alan;
	text = "You need to control your alcohol addiction.";
}

if counter = 7{
	speaker = spr_com_glaucus;
	text = "At the rate we've been going, even I could use a break. However, I agree that this is the best call. The station matters more.";
}

if counter = 8{
	speaker = spr_com_jay;
	text = "You know why I'm here, Alan. Give me a target, and I'll shoot it down.";
}

if counter = 9{
	speaker = spr_com_alan;
	text = "Good. You're our defense. Glaucus, *cough* you're our mechanic and co-pilot.";
}

if counter = 10{
	speaker = spr_com_glaucus;
	text = "I'll keep the ship sailing.";
}

if counter = 11{
	speaker = spr_com_demeter;
	text = "Resident diplomat and linguist here. We've been working together for long enough to skip the formalities, haven't we?";
}

if counter = 12{
	speaker = spr_com_alan;
	text = "You just couldn't wait your turn. We'll need your...expertise to make sure we get a good deal for our spoils.";
}

if counter = 13{
	speaker = spr_com_demeter;
	text = "If we even make it to Garinoka...";
}

if counter = 14{
	speaker = spr_com_alan;
	text = "...";
}

if counter = 15{
	speaker = spr_com_jay;
	text = "*nudges Demeter with elbow*";
}

if counter = 16{
	speaker = spr_com_alan;
	text = "Some day, Attis' old body will give out - but humanity must live on.";
}

if counter = 17{
	speaker = spr_com_alan;
	text = "We risk our lives so that when that day comes, those who inherit the burden of humanity may live a more secure and carefree life than ours.";
}

if counter = 18{
	speaker = spr_com_alan;
	text = "I know it hasn't been easy, but you've been doing amazing work, team. Keep it up.";
}

if counter = 19{
	speaker = spr_com_alan;
	text = "And yes... After this, you can drink as much as you want.";
}

if counter = 20{
	speaker = spr_com_demeter;
	text = "...Impressive. You've got yourself a deal.";
}

if counter = 21{
	speaker = spr_com_jay;
	text = "We'll have to try our best. We can't let Monroe down, or she won't ever shut up about it.";
}

if counter = 22{
	speaker = spr_com_glaucus;
	text = "Agreed. Let's finally set sail, shall we?";
}

if counter >= 23{
	room_goto(scene3);
}