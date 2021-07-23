if enemy_manager2.game_over = false && mobile{
	if jay2_2.x > x{
		x += speeed;
	}
	if jay2_2.x < x{
		x -= speeed;
	}
}

if hp <= 0{
	com2_10.counter += 1;
	audio_play_sound(snd_explosion_small, 1, false);
	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	instance_destroy();
}