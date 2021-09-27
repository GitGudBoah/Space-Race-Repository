if inrange && available{
	available = false;
	player.incontrol = false;
	player.speed = 0;
	com_totolsk.cx = player.x - 1575;
	com_totolsk.cy = player.y - 1125;
	com_totolsk.talking = true;
	audio_play_sound(snd_comlink_popup, 2, false);
	
	instance_create_layer(4000, 1024, "enemies", totolsk)
}