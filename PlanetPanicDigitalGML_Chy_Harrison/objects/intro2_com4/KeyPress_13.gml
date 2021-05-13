if npc2.inrange{
	if talking = false && npc2.available{
		npc2.available = false;
		alan_move2.incontrol = false;
		talking = true;
		alan_move2.buglock = false;
	}
}

if talking{
	counter += 1;
}