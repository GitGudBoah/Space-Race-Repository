if (distance_to_object(player) < range) && cantrigger
{
	cantrigger = false;
	//throw asteroid
	var inst = instance_create_layer(x, y, "Instances", t_asteroid);
		inst.direction = point_direction(x,y,player.x,player.y);
		audio_play_sound(snd_tentacle_attack, 1, false);
}