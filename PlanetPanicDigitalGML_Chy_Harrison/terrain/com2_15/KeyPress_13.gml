if museum_entrance.inrange{
	if talking = false && museum_entrance.available{
		museum_entrance.available = false;
		alan2.incontrol = false;
		talking = true;
		if museum_entrance.x > alan2.x{
			alan2.image_xscale = 1;
		}
		if museum_entrance.x < alan2.x{
			alan2.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}