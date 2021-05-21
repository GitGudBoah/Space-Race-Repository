if gagarin2_exit.inrange{
	if talking = false && gagarin2_exit.available{
		gagarin2_exit.available = false;
		jay2_2.incontrol = false;
		talking = true;
		if gagarin2_exit.x > jay2_2.x{
			jay2_2.image_xscale = 1;
		}
		if gagarin2_exit.x < jay2_2.x{
			jay2_2.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}