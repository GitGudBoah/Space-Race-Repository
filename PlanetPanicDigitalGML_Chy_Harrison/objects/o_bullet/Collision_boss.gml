score += 9001

instance_destroy();

repeat(10){
	instance_create_layer(x,y,"Instances",debris);
	audio_play_sound(snd_explosion_big, 1, false);
}