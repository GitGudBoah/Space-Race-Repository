if t_booth.inrange{
	if talking = false && t_booth.available{
		t_booth.available = false;
		enemy_manager3.target.incontrol = false;
		talking = true;
		if t_booth.x > enemy_manager3.target.x{
			enemy_manager3.target.image_xscale = 1;
		}
		if t_booth.x < enemy_manager3.target.x{
			enemy_manager3.target.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}