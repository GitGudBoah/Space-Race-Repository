//player is pushed away from walls
if o_game.game_over = false{
	if distance_to_object(player < 20) && player.y < 100{
		player.y += 1;
	}

	if distance_to_object(player < 20) && player.y > 650{
		player.y -= 1;
	}
}