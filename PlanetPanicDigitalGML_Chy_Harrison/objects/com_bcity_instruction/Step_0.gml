//instructions
if counter = 1{
	speaker = spr_com_rhea;
	text = "To access the Map/Upgrades/Index, go to the pause menu (P) and press O.";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "What in the world are you talking about?";
}

if counter = 3{
	speaker = spr_com_rhea;
	text = "Once you're inside the Upgrades and Index menus, you must utilize your mouse to browse through the items.";
}

if counter = 4{
	speaker = spr_com_rhea;
	text = "Furthermore-- to unlock an item in the Upgrades menu, select the item and press ENTER.";
}

if counter = 5{
	speaker = spr_com_glaucus;
	text = "There is currently no exp system in the game, so upgrades can be unlocked for free!";
}

if counter = 6{
	speaker = spr_com_demeter;
	text = "Try out each of the available upgrades, and make sure to tell the programmers on your team about any ideas you have for future upgrades!";
}

if counter = 7{
	speaker = spr_com_alan;
	text = "Jay... Please say something that makes sense.";
}

if counter = 8{
	speaker = spr_com_jay;
	text = "Kansas mode will be included as downloadable content once Space Race sells its first billion copies.";
}

if counter = 9{
	counter = 0;
	talking = false;
	player.incontrol = true;
}