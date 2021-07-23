if attis_entrance.inrange{
	if talking = false && attis_entrance.available{
		attis_entrance.available = false;
		player.incontrol = false;
		player.speed = 0;
		if intro_spawner.kandar_defeated{
			var inst = instance_create_depth(0, 0, -999, fader);
			inst.destination_room = scene1;
		} else{
			talking = true;
		}
	}
}

if talking{
	counter += 1;
}