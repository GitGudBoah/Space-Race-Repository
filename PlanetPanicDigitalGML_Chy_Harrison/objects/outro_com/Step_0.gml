if counter = 1{
	speaker = spr_com_glaucus;
	text = "Roger that! Let's take off!";
}

if counter = 2{
	speaker = spr_com_jay;
	text = "Is everyone still in one piece?";
}

if counter = 3{
	speaker = spr_com_alan;
	text = "Yes, but we aren't out of its shadow yet. *cough* Keep your finger on that trigger.";
}

if counter = 4{
	speaker = spr_com_jay;
	text = "Monroe? You hanging in there?";
}

if counter = 5{
	speaker = spr_com_demeter;
	text = "*fumbles anxiously with the radio* I can't get a signal...!";
}

if counter = 6{
	speaker = spr_com_glaucus;
	text = "Is now really the time for music?";
}

if counter = 7{
	speaker = spr_com_demeter;
	text = "Is now really the time for terrible jokes?";
}

if counter = 8{
	speaker = spr_com_demeter;
	text = "I'm trying to send out a danger warning for this area...and hopefully send a message back home.";
}

if counter = 9{
	speaker = spr_com_alan;
	text = "We've all got people waiting for us back home.";
}

if counter = 10{
	speaker = spr_com_glaucus;
	text = "...";
}

if counter = 11{
	speaker = spr_com_alan;
	text = "Don't worry doctor, none of us are dying today. Not out here.";
}

if counter = 12{
	speaker = spr_com_demeter;
	text = "*smiles nervously* You're right! ...What's gotten into me?";
}

if counter >= 13{
	room_goto(scene5);
}