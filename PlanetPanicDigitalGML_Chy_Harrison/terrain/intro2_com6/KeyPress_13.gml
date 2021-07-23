if enemy_manager.burned = false{
	if npc4.inrange{
		if talking = false && npc4.available{
			npc4.available = false;
			alan_move2.incontrol = false;
			talking = true;
			alan_move2.image_xscale = 1;
		}
	}

	if talking{
		counter += 1;
	}
}