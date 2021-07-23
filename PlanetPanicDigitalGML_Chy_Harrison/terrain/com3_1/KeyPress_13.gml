if gate.inrange{
	if talking = false && gate.available{
		gate.available = false;
		player.incontrol = false;
		player.speed = 0;
		talking = true;
	}
}

if talking{
	counter += 1;
}