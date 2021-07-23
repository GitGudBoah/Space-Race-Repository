if attis_entrance.inrange{
	if talking = false && attis_entrance.available{
		attis_entrance.available = false;
		player.incontrol = false;
		player.speed = 0;
		talking = true;
	}
}

if talking{
	counter += 1;
}