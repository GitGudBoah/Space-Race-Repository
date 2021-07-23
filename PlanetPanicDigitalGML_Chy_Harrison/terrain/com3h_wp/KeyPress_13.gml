if weapon_shop.inrange{
	if talking = false && weapon_shop.available{
		weapon_shop.available = false;
		enemy_manager3.target.incontrol = false;
		talking = true;
		if weapon_shop.x > enemy_manager3.target.x{
			enemy_manager3.target.image_xscale = 1;
		}
		if weapon_shop.x < enemy_manager3.target.x{
			enemy_manager3.target.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}