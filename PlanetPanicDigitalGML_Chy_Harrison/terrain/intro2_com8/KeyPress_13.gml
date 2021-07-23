if enemy_manager.farewell{
	if alice_corpse.inrange{
		if talking = false && alice_corpse.available{
			alice_corpse.available = false;
			alan_move2.incontrol = false;
			talking = true;
			if alice_corpse.x > alan_move2.x{
				alan_move2.image_xscale = 1;
			}
			if alice_corpse.x < alan_move2.x{
				alan_move2.image_xscale = -1;
			}
		}
	}

	if talking{
		counter += 1;
	}
}