score += 100

with(other){
	instance_destroy();
}

audio_play_sound(snd_explosion_big, 1, false);

repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}
instance_destroy();