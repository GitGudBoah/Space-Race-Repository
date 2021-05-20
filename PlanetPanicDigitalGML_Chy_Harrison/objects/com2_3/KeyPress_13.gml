if skeleton.inrange{
	if talking = false && skeleton.available{
		skeleton.available = false;
		jay2.incontrol = false;
		talking = true;
		if skeleton.x > jay2.x{
			jay2.image_xscale = 1;
		}
		if skeleton.x < jay2.x{
			jay2.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}