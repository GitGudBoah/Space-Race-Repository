if cultist3.inrange{
	if talking = false && cultist3.available{
		cultist3.available = false;
		enemy_manager3.target.incontrol = false;
		talking = true;
		if cultist3.x > enemy_manager3.target.x{
			enemy_manager3.target.image_xscale = 1;
		}
		if cultist3.x < enemy_manager3.target.x{
			enemy_manager3.target.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}