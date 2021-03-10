score += 50

with(other){
	instance_destroy();
}

audio_play_sound(snd_alien_alert_smooth, 1, false);

repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}
instance_destroy();