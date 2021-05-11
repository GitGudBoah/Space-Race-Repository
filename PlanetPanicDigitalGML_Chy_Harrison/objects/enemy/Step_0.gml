//chase the player
if o_game.game_over = false
{
	direction=point_direction(x,y,player.x,player.y);
}

if (place_meeting(x,y,o_Wall))
{
	speed = 0;	
}

//rotate sprite
if direction < 90 or direction > 270{
	image_xscale = -1;
} else {
	image_xscale = 1;
}