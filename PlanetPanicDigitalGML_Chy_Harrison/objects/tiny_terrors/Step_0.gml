if o_game.game_over = false{
	direction = point_direction(x, y, player.x, player.y);
	
	//chase player
	if distance_to_object(player) > stopping_distance{
		speed = move_speed;
	} else{
		speed = 0;
	}
	
	//shoot
	if reloading = false{
		var inst = instance_create_layer(x, y, "Instances", explosive_bullet);
		inst.direction = direction;
		reloading = true;
		alarm[0] = room_speed * reload_speed;
	}
}