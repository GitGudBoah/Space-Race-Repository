if enemy_manager.hostile = true{
	if elroy_gun.inrange{
		if talking = false && elroy_gun.available{
			elroy_gun.available = false;
			alan_move2.incontrol = false;
			talking = true;
		}
	}

	if talking{
		counter += 1;
	}
}