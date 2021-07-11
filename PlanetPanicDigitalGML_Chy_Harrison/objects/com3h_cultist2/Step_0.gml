//cultist

if counter = 1{
	speaker = spr_com_believer;
	text = "The pathways are being opened in the basement- descend these steps and spare my life!";
}

if counter = 2{
	speaker = spr_com_jay;
	text = "Were you a member of the Dread Empress' fleet?";
}

if counter = 3{
	speaker = spr_com_believer;
	text = "I was a foolish worm then! Now, my eyes are open- the Starman connects us to our savior!";
}

if counter = 4{
	speaker = spr_com_jay;
	text = "*grits teeth and points rifle at the madman's head*";
}

//decision
if counter = 5{
	speaker = spr_com_jay;
	text = "*grits teeth and points rifle at the madman's head*";
	decision = true;
}

if counter = 6{
	if choice = false{
		speaker = spr_com_alan;
		text = "*pushes Alan's rifle toward the floor and faces the madman* Leave this den. The police will decide what to do with you afterward.";
	} else{
		speaker = spr_com_blank;
		text = "The madman's head explodes against the wall.";
		if canTrigger{
			canTrigger = false;
			view_camera[0] = camera_create_view(camera_shake.view_x, camera_shake.view_y, 2100, 1500, 0, -1, -1, -1, 1050, 750);
			camera_shake.range = 80;
			audio_play_sound(snd_lasershot, 1, false);
			audio_play_sound(snd_explosion_small, 1, false);
			repeat(10){
				instance_create_layer(cultist3_2.x,cultist3_2.y,"Instances",debris);
			}
		}
	}
	decision = false;
}
//

if counter = 7{
	if choice = false{
		speaker = spr_com_jay;
		text = "What the hell, Alan!? Do you know how much evil shit this bastard must have done!?";
	} else{
		speaker = spr_com_demeter;
		text = "I would have worn a rain jacket if I knew you intended this to be such a bloodbath.";
	}
}

if counter = 8{
	if choice = false{
		speaker = spr_com_alan;
		text = "The police will handle the pirates! We're here for the hostage- that's it! If you intend to waste our time, you can leave our crew!";
	} else{
		speaker = spr_com_alan;
		text = "Your wasting time, Jay. We're not here for your revenge quest.";
	}
}

if counter = 9{
	if choice = false{
		speaker = spr_com_jay;
		text = "*clenches fists*";
	} else{
		speaker = spr_com_jay;
		text = "He was a potential threat; we have one less thing to worry about now. Your welcome.";
	}
}

if counter = 10{
	speaker = spr_com_glaucus;
	text = "The moon minerals! A quarter of our loot has been stolen!";
}

if counter = 11{
	speaker = spr_com_alan;
	text = "What!? Please tell me this is another one of your shitty jokes, Glaucus...!";
}

if counter = 12{
	speaker = spr_com_glaucus;
	text = "The security worker that inspected our cargo- he must have struck me unconscious!";
}

if counter = 13{
	speaker = spr_com_demeter;
	text = "Let's finish our business here, then we'll deal with this other dilemma!";
}

if counter = 14{
	speaker = spr_com_blank;
	text = "Your crew descends into the basement of the pirate den.";
}

if counter = 15{
	counter = 0;
	talking = false;
	var inst = instance_create_depth(0, 0, -999, fader);
	inst.destination_room = rm_hal9_3;
	inst.fadein_speed = 0.2;
	inst.fadeout_speed = 0.2;
	inst.room_swap_delay = 0.2;
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