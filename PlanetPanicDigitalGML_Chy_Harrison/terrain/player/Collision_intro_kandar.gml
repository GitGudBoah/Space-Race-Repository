hp -= 25;
hspeed *= -1;
vspeed *= -1;
speed = 20;
audio_play_sound(snd_explosion_big, 1, false);
repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}