hp -= 100;
audio_play_sound(snd_alarm_low, 1, false);
repeat(10){
	instance_create_layer(other.x,other.y,"Instances",debris);
}
instance_destroy(other);