if d_enter{
	x -= 3;
	if canTrigger{
		alarm[0] = room_speed * 9;
		canTrigger = false;
	}
}

if leave{
	x += 3;
	sprite_index = spr_dahlia_walk;
	image_xscale = -1;
}