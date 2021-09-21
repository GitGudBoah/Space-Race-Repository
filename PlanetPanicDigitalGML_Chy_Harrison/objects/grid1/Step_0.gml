/// Destroy the grid
if o_game.game_over{
	mp_grid_destroy(global.grid);
	instance_destroy();
}