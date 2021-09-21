//trigger chamber 1
if o_game.game_over = false{
	if counter = 0 && player.y <= chamber1_ystart{
		chamber_start = true;
		counter = 1;
	}
}

//trigger chamber 2
if o_game.game_over = false{
	if counter = 2 && player.y <= chamber2_ystart{
		chamber_start = true;
		chamber_start = false;
		counter = 3;
	}
}

//exit chamber 1
if killcount = 4 && counter = 1{
	counter = 2;
	
}