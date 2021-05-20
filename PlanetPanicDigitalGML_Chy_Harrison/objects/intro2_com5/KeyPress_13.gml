if enemy_manager.hostile = false{
	if npc3.inrange{
		if talking = false && npc3.available{
			npc3.available = false;
			alan_move2.incontrol = false;
			talking = true;
			alan_move2.image_xscale = 1;
		}
	}
}

if talking{
	counter += 1;
}