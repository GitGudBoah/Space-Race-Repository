if enemy_manager.hostile = false{
	if npc.inrange{
		if talking = false && npc.available{
			npc.available = false;
			alan_move2.incontrol = false;
			talking = true;
			if npc.x > alan_move2.x{
				alan_move2.image_xscale = 1;
			}
			if npc.x < alan_move2.x{
				alan_move2.image_xscale = -1;
			}
		}
	}
}

if talking{
	counter += 1;
}