//intro

if counter = 1{
	speaker = spr_com_alan;
	text = "I know. It sounds ridiculous...but it's something.";
}

if counter = 2{
	speaker = spr_com_glaucus;
	text = "Dr. Zhang... I recall when she put me together; though I doubt that she remembers me.";
}

if counter = 3{
	speaker = spr_com_demeter;
	text = "Alan~ You said we were heading to Garinoka because we needed resources to keep Attis from dying. Was that a lie?";
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
	text = "*flails back and forth* The keeper- Your child is HERE! The key- our destroyer, cleansed in filth!";
}

if counter = 7{
	speaker = spr_com_demeter;
	text = "That slug is Nalthuraas' child? You called it our destroyer... Does that include Nalthuraas as well?";
}

if counter = 8{
	speaker = spr_com_jay;
	text = "He's completely lost his mind. Should we gag him?";
}

if counter = 9{
	speaker = spr_com_alan;
	text = "Just leave him tied up... Garinoka isn't far beyond this point.";
}

if counter = 10{
	talking = false;
	player.incontrol = true;
	counter = 11;
}

if music.stations = 0 && counter2 = 2{
	counter2 = 3;
	player.incontrol = false;
	player.speed = 0;
	talking = true;
}