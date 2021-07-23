if dead >= 4 && canTrigger
{
	canTrigger = false;
	audio_stop_sound(snd_alarm_low);
	with (o_game)
	{
		alarm[1] = room_speed * 1;
	}
}