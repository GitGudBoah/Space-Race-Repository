hp -= 40;
speed = 6;
stuck = true;
alarm[4] = room_speed * 2;

audio_play_sound(snd_explosion_small, 1, false);
repeat(10){
	instance_create_layer(other.x,other.y,"Instances",debris);
}
instance_destroy(other);