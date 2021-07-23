other.x -= 8;
other.hp -= 12.5;

audio_play_sound(snd_explosion_small, 1, false);
repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}
instance_destroy();