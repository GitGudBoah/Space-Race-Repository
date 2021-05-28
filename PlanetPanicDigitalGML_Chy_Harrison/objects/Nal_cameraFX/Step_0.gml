if o_game.game_over = false{
	if player.x > 12150 && cantrigger
	{
		activated = true;
		alarm[0] = room_speed * 0.2;
		cantrigger = false;
	}
}