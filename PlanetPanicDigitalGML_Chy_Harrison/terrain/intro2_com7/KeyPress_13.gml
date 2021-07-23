if enemy_manager.hostile = true{
	if elroy_gun.inrange{
		if talking = false && elroy_gun.available{
			elroy_gun.available = false;
			alan_move2.incontrol = false;
			talking = true;
			if elroy_gun.x > alan_move2.x{
				alan_move2.image_xscale = 1;
			}
			if elroy_gun.x < alan_move2.x{
				alan_move2.image_xscale = -1;
			}
		}
	}

	if talking{
		counter += 1;
	}
}