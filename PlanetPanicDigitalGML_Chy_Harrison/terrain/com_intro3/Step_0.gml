//intro
if counter = 1{
	speaker = spr_com_alan;
	text = "Maybe if we just ignore them...";
}

if counter = 2{
	counter = 0;
	talking = false;
	player.incontrol = true;
}