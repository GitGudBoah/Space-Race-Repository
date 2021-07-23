if alan.inrange{
	if talking = false && alan.available{
		alan.available = false;
		jay2_2.incontrol = false;
		talking = true;
		jay2_2.image_xscale = 1;
	}
}

if talking{
	counter += 1;
}