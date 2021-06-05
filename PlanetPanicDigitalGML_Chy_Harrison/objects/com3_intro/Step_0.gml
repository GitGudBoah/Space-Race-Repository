//intro

if counter = 1{
	speaker = spr_com_alan;
	text = "I know. It sounds ridiculous...but it's something.";
}

if counter = 2{
	speaker = spr_com_glaucus;
	text = "Dr. Zhang... I remember when she put me together; I wonder if she still remembers me.";
}

if counter = 3{
	speaker = spr_com_demeter;
	text = "Alan~ You said we were heading to Garinoka because we needed resources to keep Attis from croaking. Was that a lie?";
}

if counter = 4{
	speaker = spr_com_alan;
	text = "The last lie, yes. Dahlia's agents are waiting for this shipment of minerals on Garinoka. It should be the last one.";
}

if counter = 5{
	speaker = spr_com_glaucus;
	text = "As far as secrets go, I suppose it could be worse...";
}

if counter = 6{
	speaker = spr_com_believer;
	text = "*flails body back and forth* The keeper- Your child is HERE! The key- our destroyer, cleansed in filth!";
}

if counter = 7{
	speaker = spr_com_demeter;
	text = "Should we gag him?";
}

if counter = 8{
	speaker = spr_com_alan;
	text = "Just leave him tied up... Garinoka isn't far beyond this point.";
}

if counter = 9{
	talking = false;
	player.incontrol = true;
	counter = 10;
}

if counter2 = 2{
	counter2 = 3;
	player.incontrol = false;
	player.speed = 0;
	talking = true;
}