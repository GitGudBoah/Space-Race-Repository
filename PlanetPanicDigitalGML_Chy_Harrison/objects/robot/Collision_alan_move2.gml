//explode on impact
audio_play_sound(snd_explosion_big, 1, false);
repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}

if (vulnerable){
	hp -= 20;
	vulnerable = false;
	alarm[0] = room_speed * 0.5;
}

with (other){
	hp -= 1;
}