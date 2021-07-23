//Alan discovers the SpaceX insignia

if counter = 1{
	speaker = spr_com_alan;
	text = "*brushes aside leaves* There's part of an insignia here... SPA...X.";
	alan_follow.sprite_index = alan_kneeled;
}

if counter = 2{
	speaker = spr_com_demeter;
	text = "Hmm... Interesting. I always thought this planet was absent of any sentient species. For good reason of course.";
}

if counter = 3{
	speaker = spr_com_blank;
	text = "Distressed mumbling echoes from the back of the building.";
}

if counter = 4{
	speaker = spr_com_jay;
	text = "Uh - Doc. M... What was that good reason you were talking about? Because I think I hear it.";
}

if counter = 5{
	speaker = spr_com_alan;
	text = "I hear it too.";
	alan_follow.sprite_index = alan_pistol;
}

if counter = 6{
	speaker = spr_com_demeter;
	text = "Let's go introduce ourselves, shall we?";
}

if counter = 7{
	counter = 8;
	talking = false;
	jay2_2.incontrol = true;
}