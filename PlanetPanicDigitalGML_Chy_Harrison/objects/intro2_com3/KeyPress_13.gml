if npc.inrange{
	if talking = false && npc.available{
		npc.available = false;
		alan_move2.incontrol = false;
		talking = true;
	}
}

if talking{
	counter += 1;
}