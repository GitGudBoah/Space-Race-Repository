//intro
if counter = 1{
	speaker = spr_com_alan;
	text = "This close to home? It must be...";
}

if counter = 2{
	speaker = spr_com_blank;
	text = "[Hold Left-click to fire. Press Q while your guns are down to Quickfire.]";
}

if counter = 3{
	counter = 0;
	talking = false;
	player.incontrol = true;
	//spawn bandits
	instance_create_layer(2752, 736, "enemies", bandit);
	instance_create_layer(1920, 1952, "enemies", bandit);
}