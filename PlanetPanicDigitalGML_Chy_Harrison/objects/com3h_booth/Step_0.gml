//Demeter calls home

if counter = 1{
	speaker = spr_com_demeter;
	text = "Would you two mind if I made a call right now?";
}

//decision
if counter = 2{
	speaker = spr_com_demeter;
	text = "Would you two mind if I made a call right now?";
	decision = true;
}

if counter = 3{
	if choice = false{
		speaker = spr_com_alan;
		text = "Go ahead. Jay and I can do a bit of exploring in the meantime.";
	} else{
		speaker = spr_com_alan;
		text = "We have important work to do. You can make a call once we're through the gate.";
	}
	decision = false;
}
//

if counter = 4{
	if choice = false{
		speaker = spr_com_jay;
		text = "We need to hunt down a smoke shop, Alan.";
	} else{
		speaker = spr_com_demeter;
		text = "You're a stern old man, Alan- y'know that?";
	}
}

if counter = 5{
	if choice = false{
		talking = false;
		counter = 6;
		var inst = instance_create_depth(0, 0, -999, fader2);
		inst.fadein_speed = 0.0075;
		inst.fadeout_speed = 0.02;
		inst.room_swap_delay = 2;
		audio_sound_gain(placeholder_music10, 0, 2000);
	} else{
		speaker = spr_com_alan;
		text = "It's the stress- I'm not that old.";
	}
}

if counter = 6{
	if choice = false{
		speaker = spr_com_demeter;
		text = "Hey, Dad.";
	} else{
		speaker = spr_com_jay;
		text = "Sure you aren't.";
	}
}

if counter = 7{
	if choice = false{
		speaker = spr_com_blank;
		text = "Have you found (brother)?";
	} else{
		counter = 0;
		talking = false;
		enemy_manager3.target.incontrol = true;
	}
}

if counter = 8{
	speaker = spr_com_demeter;
	text = "No, but-";
}

if counter = 9{
	speaker = spr_com_blank;
	text = "Don't call me unless you have something important to say, Demeter. I need to give my all to the business.";
}

if counter = 10{
	speaker = spr_com_demeter;
	text = "You haven't even heard what I have to say! You only care about (brother). Am I not your daughter anymore?";
}

if counter = 11{
	speaker = spr_com_blank;
	text = "You chose to no longer be a part of this family when you ran off to foolishly chase your own dreams!";
}

if counter = 12{
	speaker = spr_com_blank;
	text = "Look where you are now! Working as a damn sapper so you can pay off your bills. You call yourself a Monroe!?";
}

if counter = 13{
	speaker = spr_com_blank;
	text = "And now your brother has followed in your footsteps- abandoning the family business to seek adventure.";
}

if counter = 14{
	speaker = spr_com_blank;
	text = "The boy's probably dead, and it's all your fault! I don't want to hear from you unless you find (brother) and bring him home.";
}

if counter = 15{
	speaker = spr_com_demeter;
	text = "Screw you! You and (brother) can both die for all I care! I hope the business goes down in flames!";
}

if counter = 16{
	speaker = spr_com_blank;
	text = "You disrespectful, little-!";
}

if counter = 17{
	speaker = spr_com_demeter;
	text = "*slams phone down*";
}

if counter = 18{
	talking = false;
	counter = 19;
	instance_create_layer(6900, 1024, "Instances", alan_empty);
	instance_create_layer(6980, 1024, "Instances", jay_empty);
}

if counter = 19{
	speaker = spr_com_jay;
	text = "Gotta be honest- the cigars here are not my favorite.";
}

if counter = 20{
	speaker = spr_com_alan;
	text = "There's only one shop I buy smokes from- Ready to go, Demeter?";
}

if counter = 21{
	speaker = spr_com_demeter;
	text = "*wipes tear* Mhm!";
}

if counter = 22{
	counter = 23;
	talking = false;
	var inst = instance_create_depth(0, 0, -999, fader2);
	inst.fadein_speed = 0.0075;
	inst.fadeout_speed = 0.02;
	inst.room_swap_delay = 2;
	audio_sound_gain(placeholder_music4, 0, 1000);
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