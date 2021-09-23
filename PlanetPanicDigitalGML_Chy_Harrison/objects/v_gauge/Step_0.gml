if o_game.game_over = false{
	x = player.x;
	y = player.y + y_offset;
	
	if player.volley_charges = 0{
		image_index = 0;
	}
	if player.volley_charges = 1{
		image_index = 1;
	}
	if player.volley_charges = 2{
		image_index = 2;
	}
	if player.volley_charges = 3{
		image_index = 3;
	}
}