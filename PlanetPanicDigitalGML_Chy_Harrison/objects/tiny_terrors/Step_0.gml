//chase the player
if o_game.game_over = false
{
	direction=point_direction(x,y,player.x,player.y);
}

if exploding && canTrigger
{
	sprite_index = spr_tiny_terror_red;
	alarm[0] = detonation_time;
	canTrigger = false;
}