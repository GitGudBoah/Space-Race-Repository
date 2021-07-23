if npc_marker2_3.plant_alive{
	if plant.inrange{
		if talking = false && plant.available{
			plant.available = false;
			jay2_2.incontrol = false;
			talking = true;
			jay2_2.image_xscale = -1;
		}
	}
}

if talking{
	counter += 1;
}