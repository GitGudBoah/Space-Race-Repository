if counter = 1{
	speaker = spr_com_glaucus;
	text = "Alan. You've been acting different lately. Is something bothering you?";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "We don't have much time left... *cough*";
}

if counter = 3{
	speaker = spr_com_glaucus;
	text = "Are you-";
}

if counter = 4{
	speaker = spr_com_jay;
	text = "WE'VE GOT COMPANY!";
}

if counter = 5{
	speaker = spr_com_demeter;
	text = "Are we dead yet?";
}

if counter = 6{
	speaker = spr_com_alan;
	text = "GLAUCUS, THRUSTERS TO FULL BLAST!";
}

if counter = 7{
	speaker = spr_com_glaucus;
	text = "It could tear the ship in half - we'd be sucked into space!";
}

if counter = 8{
	speaker = spr_com_alan;
	text = "THAT WAS AN ORDER!";
}

if counter = 9{
	speaker = spr_com_glaucus;
	text = "I'll keep us in the air.";
}

if counter = 10{
	speaker = spr_com_demeter;
	text = "Resident diplomat and linguist here. Could we perhaps get going? We've been working together for long enough to skip the formalities.";
}

if counter = 11{
	speaker = spr_com_alan;
	text = "You just couldn't wait your turn... We'll need your...expertise to make sure we get a good deal for our spoils.";
}

if counter = 12{
	speaker = spr_com_demeter;
	text = "If we make it to Garinoka...";
}

if counter = 13{
	speaker = spr_com_alan;
	text = "...";
}

if counter = 14{
	speaker = spr_com_jay;
	text = "*nudges demeter with elbow*";
}

if counter = 15{
	speaker = spr_com_alan;
	text = "Some day, Attis' old body will give out - but humanity will live on.";
}

if counter = 16{
	speaker = spr_com_alan;
	text = "We risk our lives so that when that day comes, those who inherit our burden may live a more secure and carefree life than ours.";
}

if counter = 17{
	speaker = spr_com_alan;
	text = "I know it hasn't been easy, but you've been doing amazing work, team. Keep it up.";
}

if counter = 18{
	speaker = spr_com_alan;
	text = "And yes... After this, you can drink as much as you want.";
}

if counter = 19{
	speaker = spr_com_demeter;
	text = "...Impressive. You've got yourself a deal.";
}

if counter = 20{
	speaker = spr_com_jay;
	text = "We'll have to try our best. We can't let Monroe down, or she won't ever shut up about it.";
}

if counter = 21{
	speaker = spr_com_glaucus;
	text = "Agreed. Let's finally set sail, shall we?";
}

if counter >= 22{
	room_goto(scene3);
}