if greet{
	if x < 576{
		x += 14;
	} else{
		greet = false;
		instance_create_layer(x, y, "Instances", harpoon);
		audio_play_sound(snd_lasershot, 1, false);
	}
}