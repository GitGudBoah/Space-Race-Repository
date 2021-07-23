if o_game.game_over = false{
	direction = point_direction(x, y, player.x, player.y);
	speed = 6;

	//shooting
	if reloading = false{
		var inst = instance_create_layer(x, y, "Instances", kandar_bullet);
		inst.direction = direction;
		audio_play_sound(snd_explosion_small, 1, false);
		reloading = true;
		alarm[0] = room_speed * 1;
	}
}

//rotate sprite
if direction < 90 or direction > 270{
	image_xscale = -1;
} else {
	image_xscale = 1;
}

//die
if hp <= 0{
	intro_spawner.kandar_defeated = true;
	audio_play_sound(snd_explosion_small, 1, false);

	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	instance_destroy();
}