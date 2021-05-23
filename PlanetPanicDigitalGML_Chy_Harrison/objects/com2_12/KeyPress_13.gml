if note.inrange{
	if talking = false && note.available{
		note.available = false;
		skeleton2.available = false;
		jay2_2.incontrol = false;
		talking = true;
		if note.x > jay2_2.x{
			jay2_2.image_xscale = 1;
		}
		if note.x < jay2_2.x{
			jay2_2.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}