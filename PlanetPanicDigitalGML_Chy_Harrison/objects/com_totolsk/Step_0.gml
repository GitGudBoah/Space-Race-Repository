//camera
if cam_to_player = 1{
	if cy >= 12250{
		cam_to_player = 2;
		camera_set_view_target(view_camera[0], player);
		player.incontrol = true;
	} else{
		//scroll camera down
		camera_set_view_pos(view_camera[0], cx, cy);
		cy += 60;
	}
}

//dialogue
if counter = 1{
	speaker = spr_com_blank;
	text = "[A weary voice is received from the wounded pirate vessel: ]";
}

if counter = 2{
	speaker = spr_com_unknown;
	text = "Ah... The Coalition must have sent you to clean up here. I'm afraid you're too late.";
}

if counter = 3{
	speaker = spr_com_unknown;
	text = " The Astith general is hot on our trails. All our soldiers are dead, and there's only medics and the young recruits left on this ship.";
}

if counter = 4{
	speaker = spr_com_jay;
	text = "Let's put them out of their misery, Alan.";
}

if counter = 5{
	talking = false;
	//scroll camera up
	camera_set_view_target(view_camera[0], -1);
	camera_set_view_pos(view_camera[0], cx, cy);
	cy -= 12;
	if counter2 = 0{
		counter2 = 1;
		alarm[0] = room_speed * 1;
	}
}

if counter2 = 1{
	totolsk.y += 12;
	if totolsk.y >= 2500{
		counter2 = 2;
	}
}

if counter = 6{
	speaker = spr_com_totolsk;
	text = "WORTHLESS SOULS! I HAVEN'T FINISHED WITH YOU YET!";
}

if counter = 7{
	speaker = spr_com_demeter;
	text = "My, oh my. An Astith in the flesh. It must be Totolsk.";
}

if counter = 8{
	speaker = spr_com_alan;
	text = "These people aren't a threat, so there's no reason to kill them.";
}

if counter = 9{
	speaker = spr_com_totolsk;
	text = "Fool!";
}

if counter = 10{
	speaker = spr_com_totolsk;
	text = "War will exist as long as the Coalition and the Pirate Fleet both live. Peace can only be achieved when there is but one left.";
}

if counter = 11{
	speaker = spr_com_alan;
	text = "Mankind is going to find a way to tear itself apart no matter who wins. Why don't we just stop the petty fighting?";
}

if counter = 12{
	speaker = spr_com_totolsk;
	text = "You say that, yet you've slain countless pirates like I have, without stopping to think about right or wrong, and now you want to make that choice.";
}

if counter = 13{
	speaker = spr_com_totolsk;
	text = "But no matter what choice you make, it will end in bloodshed.";
}

if counter = 14{
	speaker = spr_com_alan;
	text = "Go-- before things get ugly.";
	if counter2 = 2{
		counter2 = 3;
		wounded_ship.leaving = true;
	}
}

if counter = 15{
	speaker = spr_com_unknown;
	text = "We won't forget this.";
}

if counter = 16{
	speaker = spr_com_jay;
	text = "What the hell, Alan!? They're shitty pirates-- who cares if they're a threat or not!";
}

if counter = 17{
	speaker = spr_com_alan;
	text = "Didn't I tell you to be our defense? What exactly are you defending by gunning those people down?";
}

if counter = 18{
	speaker = spr_com_totolsk;
	text = "You've decided to betray the Coalition and ally with the United Pirate Fleet, and my second job is to punish traitors.";
	if canTrigger{
		canTrigger = false;
		audio_sound_gain(placeholder_music1, 0, 2000);
		audio_sound_gain(placeholder_music_intro, 1, 0);
		audio_play_sound(placeholder_music_intro, 2, true);
	}
}

if counter = 19{
	speaker = spr_com_unknown;
	text = "TOTOLSK. Are you done with your little bloodbath yet?";
	if counter2 = 3{
		counter2 = 4;
		audio_play_sound(snd_static, 2, false);
	}
}

if counter = 20{
	speaker = spr_com_totolsk;
	text = "Officer Sheep has turned against us. I'll be staying out in the field for a little longer it seems.";
}

if counter = 21{
	speaker = spr_com_unknown;
	text = "Finish it quickly and come home. There are people waiting-- people who cherish even a beast such as you.";
}

if counter = 22{
	speaker = spr_com_totolsk;
	text = "I'll let you in on a little secret, Officer. All who defy the Coalition are sent to me.";
}

if counter = 23{
	speaker = spr_com_totolsk;
	text = "But among the many criminals, protesters, and rebels, it's the heroes that taste the sweetest.";
}

if counter = 24{
	speaker = spr_com_totolsk;
	text = "I wonder how your soul will taste-- that of a hero or a fool!";
}

if counter = 25{
	counter = 0;
	talking = false;
	instance_create_layer(0, 0, "enemies", boss_cutaway_totolsk);
	audio_stop_sound(placeholder_music1);
	audio_sound_gain(placeholder_music1, 1, 0);
}

if boss_defeated && counter2 = 4{
	counter2 = 5;
	alarm[2] = room_speed * 2;
}