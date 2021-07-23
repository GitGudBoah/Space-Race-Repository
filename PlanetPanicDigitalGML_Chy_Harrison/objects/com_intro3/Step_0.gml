//intro
if counter = 1{
	speaker = spr_com_alan;
	text = "Maybe if we just ignore them...";
}

if counter = 2{
	speaker = spr_com_blank;
	text = "[Press/hold SPACE to fire. Press Q while your guns are down to Quickfire.]";
}

if counter = 3{
	counter = 0;
	talking = false;
	player.incontrol = true;
}