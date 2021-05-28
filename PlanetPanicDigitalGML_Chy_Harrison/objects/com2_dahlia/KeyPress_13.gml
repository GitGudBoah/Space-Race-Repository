if dahlia2.inrange{
	if talking = false && dahlia2.available{
		dahlia2.available = false;
		alan2.incontrol = false;
		talking = true;
		if dahlia2.x > alan2.x{
			alan2.image_xscale = 1;
			dahlia2.image_xscale = 1;
		}
		if dahlia2.x < alan2.x{
			alan2.image_xscale = -1;
			dahlia2.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}