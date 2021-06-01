if counter = 5{
	//do nothing
} else{
	if barricade.inrange{
		if talking = false && barricade.available{
			barricade.available = false;
			glaucus3_lead.incontrol = false;
			talking = true;
			glaucus3_lead.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}