if jokester.inrange{
	if talking = false && jokester.available{
		jokester.available = false;
		alan2.incontrol = false;
		talking = true;
		if jokester.x > alan2.x{
			alan2.image_xscale = 1;
		}
		if jokester.x < alan2.x{
			alan2.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}