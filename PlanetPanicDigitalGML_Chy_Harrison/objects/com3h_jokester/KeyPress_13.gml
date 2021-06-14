if jokester3.inrange{
	if talking = false && jokester3.available{
		jokester3.available = false;
		enemy_manager3.target.incontrol = false;
		talking = true;
		if jokester3.x > enemy_manager3.target.x{
			enemy_manager3.target.image_xscale = 1;
		}
		if jokester3.x < enemy_manager3.target.x{
			enemy_manager3.target.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}