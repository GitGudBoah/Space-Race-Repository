if o_game.game_over = false{
	if player.incontrol = false{
		instance_destroy();
	}
}

if com_totolsk.boss_defeated{
	instance_destroy();
}