if bar.inrange{
	if talking = false && bar.available{
		bar.available = false;
		enemy_manager3.target.incontrol = false;
		talking = true;
		if bar.x > enemy_manager3.target.x{
			enemy_manager3.target.image_xscale = 1;
		}
		if bar.x < enemy_manager3.target.x{
			enemy_manager3.target.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}