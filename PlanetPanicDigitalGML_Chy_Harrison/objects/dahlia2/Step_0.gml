if distance_to_object(alan2) <= 70{
	inrange = true;
} else{
	inrange = false;
}

//walk
if walk{
	image_xscale = -1;
	sprite_index = spr_dahlia_walk;
	if alan2.x >= x - 200{
		x += 8;
	} else if distance_to_object(alan2) <= range{
		x += 7;
	}
}

if x >= 8160 && canTrigger{
	canTrigger = false;
	walk = false;
	sprite_index = spr_dahlia;
	available = true;
	//com
	com2_dahlia.counter = 0;
	com2_dahlia.counter2 = 1;
}

if x >= 3250 && canTrigger2{
	canTrigger2 = false;
	walk = false;
	sprite_index = spr_dahlia;
	available = true;
}