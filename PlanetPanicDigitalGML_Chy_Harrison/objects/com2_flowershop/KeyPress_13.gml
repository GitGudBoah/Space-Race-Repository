if flower_shop.inrange{
	if talking = false && flower_shop.available{
		flower_shop.available = false;
		alan2.incontrol = false;
		talking = true;
		if flower_shop.x > alan2.x{
			alan2.image_xscale = 1;
		}
		if flower_shop.x < alan2.x{
			alan2.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}