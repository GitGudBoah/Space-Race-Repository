//flying asteroids
if o_game.game_over = false && active{
	var inst = instance_create_layer(player.x + 2100, player.y, "Instances", t_asteroid2);
	inst.direction = point_direction(player.x + 2100, player.y, player.x, player.y);
	audio_play_sound(snd_tentacle_attack, 1, false);
	alarm[0] = room_speed * 4;
}