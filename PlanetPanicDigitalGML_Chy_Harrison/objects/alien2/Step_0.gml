//chase the player
if (check) && (distance_to_object(player) <= range) {
	pursuit = true;
	audio_play_sound(snd_alien_alert_smooth, 1, false);
	check = false;
}

if o_game.game_over = false && pursuit
{
	direction=point_direction(x,y,player.x,player.y);
	if distance_to_object(player) > slowing_distance{
		speed = 12;
	} else{
		speed = 6;
	}
}

//rotate sprite
if direction < 90 or direction > 270{
	image_xscale = -1;
} else {
	image_xscale = 1;
}

//hp
if hp <= 0{
	audio_play_sound(snd_explosion_small, 1, false);

	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	instance_destroy();
}