if cultist3_2.inrange{
	if talking = false && cultist3_2.available{
		cultist3_2.available = false;
		enemy_manager3.target.incontrol = false;
		talking = true;
		if cultist3_2.x > enemy_manager3.target.x{
			enemy_manager3.target.image_xscale = 1;
		}
		if cultist3_2.x < enemy_manager3.target.x{
			enemy_manager3.target.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}