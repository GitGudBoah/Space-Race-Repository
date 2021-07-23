// Alice

if counter = 1{
	speaker = spr_com_alan;
	text = "What did you find?";
}

if counter = 2{
	speaker = spr_com_alice;
	text = "*extends slime-covered hands* It's a slug!";
}

if counter = 3{
	speaker = spr_com_alan;
	text = "I told you not to pick up random bugs. I remember us talking about this.";
}

if counter = 4{
	speaker = spr_com_alice;
	text = "But this one is special! I can *cough* feel it!";
}

if counter = 5{
	speaker = spr_com_alan;
	text = "Ah.. Sorry. *quickly puts out cigarette*";
	alan_move2.cig = false;
}

if counter = 6{
	speaker = spr_com_alice;
	text = "Its eyes kinda look like yours. *cough*";
	//fade out bg audio
	if canTrigger7{
		canTrigger7 = false;
		audio_sound_gain(placeholder_music, 0, 3000);
	}
}

if counter = 7{
	speaker = spr_com_alan;
	text = "No shot. You've been watching too many cartoons.";
}

if counter = 8{
	speaker = spr_com_alice;
	text = "True... I guess you should take me to places more often then.";
}

//decision
if counter = 9{
	speaker = spr_com_alice;
	text = "True... I guess you should take me to places more often then.";
	decision = true;
}

if counter = 10{
	if choice = false{
		speaker = spr_com_alan;
		text = "Hm... Sure. Why not.";
	} else{
		speaker = spr_com_alan;
		text = "Y'know what? You run around and pick up as many bugs as you want from now on- I'm not too old, I'll be right behind you.";
	}
	decision = false;
}
//

if counter = 11{
	if choice = false{
		speaker = spr_com_alice;
		text = "*cough* *cough* Really!? *cough*";
	} else{
		speaker = spr_com_alice;
		text = "*cough* *cough* It's okay, Dad... *HACK*";
	}
	//play sad music
	if canTrigger6{
		canTrigger6 = false;
		audio_stop_all();
		audio_play_sound(placeholder_music2, 1, true);
	}
}

if counter = 12{
	speaker = spr_com_alan;
	text = "Alice! Are you okay?";
}

if counter = 13{
	speaker = spr_com_alice;
	text = "*HACK* *drops slug- bleeds from face*";
	alice_move2.sprite_index = alice_bleeding;
}

if counter = 14 && canTrigger{
	canTrigger = false;
	speaker = spr_com_alan;
	text = "*catches her in arms* JESUS- ALICE!";
	elroy_move.e_enter = true;
	alan_move2.kneeling = true;
}

if counter = 15{
	speaker = spr_com_elroy;
	text = "Holy hell! What's happening!?";
}

if counter = 16{
	speaker = spr_com_alan;
	text = "SHE WON'T STOP BLEEDING! CALL FOR HELP!";
}

if counter = 17 && canTrigger2{
	canTrigger2 = false;
	speaker = spr_com_elroy;
	text = "Alice is dying! call a... *voice fades into the noise*";
	elroy_move.e_enter = false;
	elroy_move.e_exit = true;
}

if counter = 18{
	speaker = spr_com_alice;
	text = "*HACK* *GASP*";
}

if counter = 19 && canTrigger4{
	canTrigger4 = false;
	speaker = spr_com_alan;
	text = "*rocks her back and forth- blood spills through fingers* come on... come on, damnit...!";
	robot.r_enter = true;
	dahlia_move.d_enter = true;
}

if counter = 20{
	speaker = spr_com_robot;
	text = "EVACUATE THE AREA IMMEDIATELY. STRAGGLERS WILL BE INCINERATED.";
}

if counter = 21{
	speaker = spr_com_dahlia;
	text = "A remnant of Nalthuraas has escaped the research lab! Clear the area!";
}

if counter = 22{
	speaker = spr_com_robot;
	text = "THE REMNANT HAS BEEN LOCATED.";
}

if counter = 23{
	speaker = spr_com_dahlia;
	text = "...";
}

if counter = 24{
	speaker = spr_com_alice;
	text = "*gurgle* *strained voice* Dad...";
}

if counter = 25{
	speaker = spr_com_robot;
	text = "A PASSENGER HAS BEEN EXPOSED TO THE REMNANT. COMMENCING INCINERATION-";
}

if counter = 26{
	speaker = spr_com_alan;
	text = "*draws pistol* get back...";
}

if counter = 27{
	speaker = spr_com_dahlia;
	text = "Oh, Alan... What have you done?";
}

if counter = 28{
	speaker = spr_com_alice;
	text = "*eyes filled with blood - can't open*";
}

if counter = 29{
	speaker = spr_com_alan;
	text = "*clenches Alice's hand* You're not dying here. Come on...";
}

if counter = 30{
	speaker = spr_com_dahlia;
	text = "You've failed as a father. Let her go.";
}

if counter = 31{
	speaker = spr_com_alan;
	text = "...";
}

if counter = 32{
	speaker = spr_com_dahlia;
	text = "*heavy sigh*";
	dahlia_move.d_enter = false;
	dahlia_move.leave = true;
}

if counter = 33{
	speaker = spr_com_dahlia;
	text = "*crosses arms* Quarantine him!";
}

if counter = 34{
	speaker = spr_com_dahlia;
	text = "Burn the girl.";
}

if counter = 35 && canTrigger3{
	canTrigger3 = false;
	talking = false;
	if canTrigger5{
		canTrigger5 = false;
		alan_move2.armed = true;
		alan_move2.incontrol = true;
	}
	instance_create_layer(128, 1000, "Instances", elroy_gun);
	enemy_manager.hostile = true;
	instance_destroy(npc);
	instance_destroy(npc2);
	instance_destroy(npc3);
}

//decision: choosing
if decision{
	if keyboard_check_pressed(ord("D")){
		choice = true;
	}

	if keyboard_check_pressed(ord("A")){
		choice = false;
	}
}