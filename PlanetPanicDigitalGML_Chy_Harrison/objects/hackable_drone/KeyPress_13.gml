if inrange && available{
	available = false;
	player.incontrol = false;
	player.speed = 0;
	talking = true;
	audio_play_sound(snd_comlink_popup, 2, false);
}

if talking{
	counter += 1;
}