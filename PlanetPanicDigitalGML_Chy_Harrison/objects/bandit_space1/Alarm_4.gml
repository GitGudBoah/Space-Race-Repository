/// Create the path and move to the player
if o_game.game_over = false && knockback = false{
	if mp_grid_path(global.grid, path, x, y, player.x, player.y, 1){
		path_start(path, move_speed, path_action_stop, false);
	}
}

alarm[4] = room_speed * 0.5;