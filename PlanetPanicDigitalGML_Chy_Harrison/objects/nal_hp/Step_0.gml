if dead >= 4 && canTrigger
{
	canTrigger = false;
	with (o_game)
	{
		alarm[1] = room_speed * 1;
	}
}