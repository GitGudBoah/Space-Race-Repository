if insignia.inrange{
	if talking = false && insignia.available{
		insignia.available = false;
		jay2_2.incontrol = false;
		talking = true;
		if insignia.x > jay2_2.x{
			jay2_2.image_xscale = 1;
		}
		if insignia.x < jay2_2.x{
			jay2_2.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}