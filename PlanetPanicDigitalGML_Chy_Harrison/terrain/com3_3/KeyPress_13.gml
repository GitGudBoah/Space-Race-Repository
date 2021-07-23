if xenom.inrange{
	if talking = false && xenom.available{
		xenom.available = false;
		player.incontrol = false;
		player.speed = 0;
		talking = true;
	}
}

if talking{
	counter += 1;
}