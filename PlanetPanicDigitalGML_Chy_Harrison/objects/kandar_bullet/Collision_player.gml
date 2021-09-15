if other.invulnerable = false{
	with(other){
		invulnerable = true;
		image_blend = c_gray;
		alarm[0] = room_speed * 1;
		hp -= 40;
	}

	audio_play_sound(snd_explosion_big, 1, false);

	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	instance_destroy();
}