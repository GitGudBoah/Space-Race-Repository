if gagarin2_enter.inrange{
	if talking = false && gagarin2_enter.available{
		gagarin2_enter.available = false;
		jay2.incontrol = false;
		talking = true;
		if gagarin2_enter.x > jay2.x{
			jay2.image_xscale = 1;
		}
		if gagarin2_enter.x < jay2.x{
			jay2.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}