with (other){
	hp += -10;
}

repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}
audio_play_sound(snd_alien_alert_smooth, 1, false);
instance_destroy();