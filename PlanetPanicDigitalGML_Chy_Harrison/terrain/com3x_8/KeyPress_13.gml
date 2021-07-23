if loverx.inrange{
	if talking = false && loverx.available{
		loverx.available = false;
		glaucus3_lead.incontrol = false;
		talking = true;
		glaucus3_lead.image_xscale = -1;
	}
}

if talking{
	counter += 1;
}