if o_game.game_over = false{
	if player.x > 12150 && canTrigger
	{
		alarm[0] = firerate;
		audio_play_sound(snd_alarm_low, 1, true);
		canTrigger = false;
	}
}