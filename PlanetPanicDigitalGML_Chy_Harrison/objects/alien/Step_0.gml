//chase the player
if o_game.game_over = false
{
	direction=point_direction(x,y,player.x,player.y);
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