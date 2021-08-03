//chasing aliens
if o_game.game_over = false && active{
	instance_create_layer(player.x - 2100, player.y, "Instances", alien);
	audio_play_sound(snd_alien_alert_smooth, 1, false);
	alarm[0] = room_speed * 4;
}