if o_game.game_over = false{
	if player.incontrol = false{
		instance_destroy();
	}
}

if x < 0{
	instance_destroy();
}