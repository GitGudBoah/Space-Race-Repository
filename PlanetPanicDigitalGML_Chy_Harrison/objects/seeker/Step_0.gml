if o_game.game_over = false{
	/// Chase player
	direction = point_direction(x, y, player.x, player.y);
	//stopping distance
	if distance_to_object(player) <= stopping_distance{
		speed = 0;
	} else{
		speed = 10;
	}
	
	/// Shoot player
	if reloading = false{
		var inst = instance_create_layer(x, y, "Instances", bandit_bullet);
		inst.direction = 0;
		var inst1 = instance_create_layer(x, y, "Instances", bandit_bullet);
		inst1.direction = 45;
		var inst2 = instance_create_layer(x, y, "Instances", bandit_bullet);
		inst2.direction = 90;
		var inst3 = instance_create_layer(x, y, "Instances", bandit_bullet);
		inst3.direction = 135;
		var inst4 = instance_create_layer(x, y, "Instances", bandit_bullet);
		inst4.direction = 180;
		var inst = instance_create_layer(x, y, "Instances", bandit_bullet);
		bullet6.direction = 225;
		var bullet7 = instance_create_layer(x, y, "Instances", bandit_bullet);
		bullet7.direction = 270;
		var bullet8 = instance_create_layer(x, y, "Instances", bandit_bullet);
		bullet8.direction = 360;
		reloading = true;
		alarm[0] = room_speed * fire_rate;
	}
}

/// Die
if hp <= 0{
	audio_play_sound(snd_explosion_small, 2, false);
	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	instance_destroy();
}