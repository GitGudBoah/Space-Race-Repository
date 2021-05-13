if activated && x < 1950{
	x += 16;
}

if x >= 1950{
	if distance_to_object(alan_move2) <= 100{
		activated2 = true;
	}

	if activated2 && x <= 4864{
		x += 10;
	}
}