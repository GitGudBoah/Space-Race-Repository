if enemy_manager.hostile = false{
	if npc2.inrange{
		if talking = false && npc2.available{
			npc2.available = false;
			alan_move2.incontrol = false;
			talking = true;
			if npc2.x > alan_move2.x{
				alan_move2.image_xscale = 1;
			}
			if npc2.x < alan_move2.x{
				alan_move2.image_xscale = -1;
			}
		}
	}
}

if talking{
	counter += 1;
}