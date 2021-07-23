hp -= 50;

audio_play_sound(snd_explosion_big, 1, false);

repeat(10){
	instance_create_layer(other.x,other.y,"Instances",debris);
}

instance_destroy(other);