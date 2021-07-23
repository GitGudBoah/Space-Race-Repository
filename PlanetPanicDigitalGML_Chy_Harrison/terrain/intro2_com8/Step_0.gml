// Alice's corpse

if counter = 1{
	speaker = spr_com_alan;
	text = "Alice... Oh GOD NO! *falls to hands and knees*";
	alan_move2.armed = false;
}

if counter = 2{
	speaker = spr_com_alice;
	text = "*smoke rises from charred body* *eyeballs boil in their sockets*";
}

if counter = 3{
	speaker = spr_com_alan;
	text = "*pounds the floor and sobs* NO!";
}

if counter = 4{
	speaker = spr_com_alan;
	text = "Honey...";
}

if counter = 5{
	speaker = spr_com_alan;
	text = "I'm sorry...";
}

if counter = 6{
	speaker = spr_com_alan;
	text = "I let you down.";
	if canTrigger2{
		canTrigger2 = false;
		audio_sound_gain(placeholder_music2, 0, 2000);
	}
}

if counter = 7{
	talking = false;
	if canTrigger{
		canTrigger = false;
		alarm[0] = room_speed * 1;
	}
}