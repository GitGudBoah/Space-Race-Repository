//Xenom greeter

if counter = 1{
	speaker = spr_com_demeter;
	text = "*sniff* Don't you smell something strange in the air?";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "Wait- Someone's coming...!";
}

if counter = 3{
	talking = false;
	counter = 4;
	greeter.greet = true;
}

if counter = 4{
	speaker = spr_com_kandar;
	text = "Welcome to Xenom, home to the finest water in the galaxy!";
}

if counter = 5{
	speaker = spr_com_kandar;
	text = "Please sign into the guest list!";
}

if counter = 6{
	speaker = spr_com_alan;
	text = "...Alan Sheep.";
}

if counter = 7{
	speaker = spr_com_kandar;
	text = "*ding* Welcome aboard!";
}

if counter = 8{
	speaker = spr_com_demeter;
	text = "Demeter Monroe- Nice to meet you!";
}

if counter = 9{
	speaker = spr_com_kandar;
	text = "*ding* Welcome aboard!";
}

if counter = 10{
	speaker = spr_com_glaucus;
	text = "Glaucus- Your outfit looks lovely!";
}

if counter = 11{
	speaker = spr_com_alan;
	text = "How many passengers are on this station?";
}

if counter = 12{
	speaker = spr_com_kandar;
	text = "Now that the two of you are here, there are only three.";
}

if counter = 13{
	speaker = spr_com_blank;
	text = "Glaucus activates his heartbeat sensor.";
}

if counter = 14{
	speaker = spr_com_glaucus;
	text = "I detect a heartbeat on the third floor.";
}

if counter = 15{
	speaker = spr_com_demeter;
	text = "Alright, let's go get that key.";
}

if counter = 16{
	speaker = spr_com_kandar;
	text = "Do be mindful of the hydrogen gas throughout the facility!";
}

if counter = 17{
	speaker = spr_com_demeter;
	text = "THE WHAT!?";
}

if counter = 18{
	speaker = spr_com_blank;
	text = "Alan, Demeter, and Glaucus urgently put away their guns.";
}

if counter = 19{
	speaker = spr_com_demeter;
	text = "*sweats nervously* I knew I smelled something! It's the odorant used to detect gas leaks!";
}

if counter = 20{
	speaker = spr_com_alan;
	text = "*wipes brow* Let's try not to blow ourselves up, yeah?";
}

if counter = 21{
	talking = false;
	alan3.incontrol = true;
	counter = 0;
}

//decision
if counter = 100{
	speaker = spr_com_kandar;
	text = "Is there anything else I can help you with?";
	decision = true;
}

if counter = 100{
	if choice = false{
		
	} else{
		talking = false;
		alan3.incontrol = true;
		counter = 0;
	}
	decision = false;
}
//

//decision: choosing
if decision{
	if keyboard_check_pressed(ord("D")){
		choice = true;
	}

	if keyboard_check_pressed(ord("A")){
		choice = false;
	}
}