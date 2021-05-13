// Alice

if counter = 1{
	speaker = spr_com_alan;
	text = "What did you find?";
}

if counter = 2{
	speaker = spr_com_ralaxia;
	text = "*extends slime-covered hands* It's a slug!";
}

if counter = 3{
	speaker = spr_com_alan;
	text = "I told you not to pick up random bugs. I remember us talking about this.";
}

if counter = 4{
	speaker = spr_com_ralaxia;
	text = "But this one is special! I can *cough* feel it!";
}

if counter = 5{
	speaker = spr_com_alan;
	text = "Ah.. Sorry. *quickly puts out cigarette*";
}

if counter = 6{
	speaker = spr_com_ralaxia;
	text = "*cough* Its eyes kinda look like yours.";
}

if counter = 7{
	speaker = spr_com_alan;
	text = "No shot. You've been watching too many cartoons.";
}

if counter = 8{
	speaker = spr_com_ralaxia;
	text = "True... I guess you should take me to places more often then.";
}

if counter = 9{
	speaker = spr_com_alan;
	text = "Sure. Why not.";
}

if counter = 10{
	speaker = spr_com_ralaxia;
	text = "*cough* *cough* Really!? *cough*";
}

if counter = 11{
	speaker = spr_com_alan;
	text = "Alice! Are you okay?";
}

if counter = 12{
	speaker = spr_com_ralaxia;
	text = "*coughs violently*";
}

if counter = 13{
	speaker = spr_com_ralaxia;
	text = "*bleeds from face*";
}

if counter = 14{
	speaker = spr_com_ralaxia;
	text = "*drops the slug and falls*";
}

if counter = 15 && canTrigger{
	canTrigger = false;
	speaker = spr_com_alan;
	text = "*catches her in arms* JESUS - ALICE!";
	elroy_move.e_enter = true;
}

if counter = 16{
	speaker = spr_com_kandar;
	text = "Holy hell! What's happening!?";
}

if counter = 17{
	speaker = spr_com_alan;
	text = "SHE WON'T STOP BLEEDING! CALL FOR HELP!";
}

if counter = 18 && canTrigger2{
	canTrigger2 = false;
	speaker = spr_com_kandar;
	text = "Alice is dying! call a... *voice fades into the noise*";
	elroy_move.e_enter = false;
	elroy_move.e_exit = true;
}

if counter = 19{
	speaker = spr_com_ralaxia;
	text = "*HACK* *GASP*";
}

if counter = 20 && canTrigger4{
	canTrigger4 = false;
	speaker = spr_com_alan;
	text = "*rocks her back and forth* *blood spills through fingers* come on... come on...";
	robot.r_enter = true;
}

if counter = 21{
	speaker = spr_com_glaucus;
	text = "EVACUATE THE AREA IMMEDIATELY. STRAGGLERS WILL BE INCINERATED.";
}

if counter = 22{
	speaker = spr_com_glaucus;
	text = "A REMNANT OF NALTHURAAS HAS ESCAPED THE LAB. EVACUATE THE AREA IMMEDIATELY.";
}

if counter = 23{
	speaker = spr_com_glaucus;
	text = "THE REMNANT HAS BEEN LOCATED.";
}

if counter = 24{
	speaker = spr_com_glaucus;
	text = "...";
}

if counter = 25{
	speaker = spr_com_ralaxia;
	text = "*gurgle* *strained voice* Dad...";
}

if counter = 26{
	speaker = spr_com_glaucus;
	text = "A PASSENGER HAS BEEN EXPOSED TO THE REMNANT. COMMENCE INCINERATION.";
}

if counter = 27{
	speaker = spr_com_alan;
	text = "*draws pistol, eyes locked on alice* get back...";
}

if counter = 28{
	speaker = spr_com_glaucus;
	text = "QUARANTINE HIM. BURN THE GIRL.";
}

if counter = 29 && canTrigger3{
	canTrigger3 = false;
	talking = false;
	if canTrigger5{
		canTrigger5 = false;
		alan_move2.incontrol = true;
	}
	instance_create_layer(128, 1120, "Instances", elroy_gun);
	enemy_manager.hostile = true;
}