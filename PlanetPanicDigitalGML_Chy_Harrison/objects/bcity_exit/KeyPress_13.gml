if inrange && available{
	available = false;
	player.incontrol = false;
	player.speed = 0;
	var inst = instance_create_depth(0, 0, -999, fader);
	inst.destination_room = open_space;
	audio_sound_gain(placeholder_music13, 0, 2000);
}