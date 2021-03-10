//chase the player
if o_game.game_over = false
{
	direction=point_direction(x,y,player.x,player.y);
}

if hp <= 0{
	with (o_game){
		alarm[1] = room_speed * 1;
	}
	score += 9001;
	repeat(20){
	instance_create_layer(x,y,"Instances",debris_boss);
	}
	instance_destroy();
}