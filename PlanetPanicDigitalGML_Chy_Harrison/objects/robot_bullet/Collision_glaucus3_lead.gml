other.hp -= 100;

audio_play_sound(snd_explosion_small, 1, false);
repeat(10){
	instance_create_layer(other.x,other.y,"Instances",debris);
}

other.x += 7;
com3x_8.alarm[0] = room_speed * 1;

instance_destroy();