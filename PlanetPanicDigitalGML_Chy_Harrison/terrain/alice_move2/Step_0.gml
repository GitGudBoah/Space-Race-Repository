if activated && x < 1950{
	x += 16;
	sprite_index = alice_run;
}

if x >= 1950{
	if canTrigger{
		canTrigger = false;
		sprite_index = alice_idle;
	}
	if distance_to_object(alan_move2) <= 100{
		activated2 = true;
	}

	if activated2 && x <= 4864{
		x += 10;
		sprite_index = alice_run;
	}
}

if x > 4864 && canTrigger2{
	canTrigger2 = false;
	enemy_manager.slug_found = true;
	sprite_index = alice_idle;
}

if enemy_manager.counter >= 4{
	instance_destroy();
}