//Die
if o_game.game_over = false{
	player.alarm[7] = room_speed * o_game.Rdrone_cooldown;
}

audio_play_sound(snd_drone_explode, 1, false);

repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}
instance_destroy();