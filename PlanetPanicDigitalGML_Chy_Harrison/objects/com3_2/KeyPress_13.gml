if hal_9.inrange{
	if talking = false && hal_9.available{
		hal_9.available = false;
		player.incontrol = false;
		player.speed = 0;
		talking = true;
	}
}

if talking{
	counter += 1;
}