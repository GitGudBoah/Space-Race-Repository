//chase the player
if o_game.game_over = false
{
	direction=point_direction(x,y,player.x,player.y);
}

if (place_meeting(x,y,o_Wall))
{
	speed = 0;	
}

if(place_meeting(x,y,player)){
	instance_create_layer(x,y, "Crush him!", o_textbox);
}