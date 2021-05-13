if npc3.inrange{
	if talking = false && npc3.available{
		npc3.available = false;
		alan_move2.incontrol = false;
		talking = true;
	}
}

if talking{
	counter += 1;
}