//chase the player
if (check) && (distance_to_object(player) <= range) {
	pursuit = true;
	audio_play_sound(snd_alarm_low, 1, false);
	check = false;
}

if o_game.game_over = false && pursuit
{
	direction=point_direction(x,y,player.x,player.y);
	speed = 0.5;
	
	//shooting
	if reloading = false {
		var inst = instance_create_layer(x, y, "Instances", bandit_bullet);
		inst.direction = direction;
		audio_play_sound(snd_lasershot, 1, false);
		reloading = true;
		alarm[0] = room_speed * firerate;
	}
}

//rotate sprite
if direction < 90 or direction > 270{
	image_xscale = -1;
} else {
	image_xscale = 1;
}

if hp <= 0{
	audio_play_sound(snd_explosion_small, 1, false);

	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	instance_destroy();
}