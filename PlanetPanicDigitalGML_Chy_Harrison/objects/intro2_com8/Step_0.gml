// Attis salesman

if counter = 1{
	speaker = spr_com_alan;
	text = "Alice... Oh GOD NO! *falls to hands and knees*";
}

if counter = 2{
	speaker = spr_com_ralaxia;
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
}

if counter = 7{
	talking = false;
	if canTrigger{
		canTrigger = false;
		alan_move2.incontrol = true;
	}
	room_goto(Victory);
}