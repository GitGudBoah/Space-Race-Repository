score += 10;

audio_play_sound(snd_explosion_small, 1, false);

with(other){
	instance_destroy();
}

repeat(10)
{
	instance_create_layer(x,y,"Instances",debris);
}

instance_destroy();