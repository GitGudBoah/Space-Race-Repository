if o_game.game_over = false{
	if player.x > 12150 && canTrigger
	{
		activated = true;
		canTrigger = false;
	}
//throw asteroid
	if fire_order.a1
	{
		var inst = instance_create_layer(x, y, "Instances", t_asteroid);
			inst.direction = point_direction(x,y,player.x,player.y);
			audio_play_sound(snd_tentacle_attack, 1, false);
		fire_order.a1 = false;
	}
}

//fade in
if activated && image_alpha < 100
{
	image_alpha += 0.01;
}

// health system
if hp <= 0
{
	nal_hp.alive1 = false;
	nal_hp.dead += 1;
	repeat(10)
	{
	instance_create_layer(x,y,"Instances",debris);
	}

	instance_destroy();
}