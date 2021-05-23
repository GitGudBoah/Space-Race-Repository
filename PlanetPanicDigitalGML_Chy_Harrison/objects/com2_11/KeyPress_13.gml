if skeleton2.inrange{
	if talking = false && skeleton2.available{
		skeleton2.available = false;
		jay2_2.incontrol = false;
		talking = true;
		if skeleton2.x > jay2_2.x{
			jay2_2.image_xscale = 1;
		}
		if skeleton2.x < jay2_2.x{
			jay2_2.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}