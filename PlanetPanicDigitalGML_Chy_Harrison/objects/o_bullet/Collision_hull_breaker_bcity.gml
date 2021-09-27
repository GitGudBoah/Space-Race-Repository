if other.armored = true{
	other.hp -= 10;
	audio_play_sound(snd_lasershot_armor, 1, false);
} else{
	other.hp -= 25;
	audio_play_sound(snd_explosion_big, 1, false);
}

repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}
instance_destroy();