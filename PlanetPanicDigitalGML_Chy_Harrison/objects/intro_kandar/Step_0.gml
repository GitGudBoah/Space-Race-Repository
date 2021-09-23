if o_game.game_over = false
{
	direction=point_direction(x,y,player.x,player.y);
	
	//shooting
	if reloading = false {
		var inst = instance_create_layer(x, y, "Instances", kandar_bullet);
		inst.direction = direction;
		var inst1 = instance_create_layer(x, y, "Instances", kandar_bullet);
		inst1.direction = direction - 10;
		var inst2 = instance_create_layer(x, y, "Instances", kandar_bullet);
		inst2.direction = direction + 10;
		audio_play_sound(snd_explosion_small, 1, false);
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
	o_game.currency += 40;
	intro_spawner.kandar_defeated = true;
	audio_play_sound(snd_explosion_big, 1, false);
	
	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	var inst = instance_create_layer(x,y,"Instances",explosion);
	inst.image_xscale = 3;
	inst.image_yscale = 3;
	instance_destroy();
}