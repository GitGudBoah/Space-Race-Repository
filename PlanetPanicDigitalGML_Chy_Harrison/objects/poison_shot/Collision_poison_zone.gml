other.active = true;
other.alarm[0] = room_speed * 4;
audio_play_sound(snd_explosion_small, 1, false);
repeat(5){
	instance_create_layer(x,y,"Instances",debris);
}
instance_destroy();