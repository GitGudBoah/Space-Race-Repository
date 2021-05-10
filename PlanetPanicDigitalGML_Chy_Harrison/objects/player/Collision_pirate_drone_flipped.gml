hp -= 5;

audio_play_sound(snd_explosion_big, 1, false);

repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}

instance_destroy(other);