if counter = 5{
	//do nothing
} else{
	if barricade.inrange{
		if talking = false && barricade.available{
			barricade.available = false;
			alan3.incontrol = false;
			talking = true;
			alan3.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}