//reviving attack
if o_game.game_over = false && reviving{
	repeat(10){
		var rev = instance_create_layer(x, y, "Instances", totolsk_bullet);
		rev.direction = attack2_direction;
		attack2_direction += 36;
	}
	if death_counter > 6{
		var rev1 = instance_create_layer(x, y, "Instances", totolsk_bullet);
		rev1.direction = point_direction(x,y,player.x,player.y) - 45 + random_range(0, 90);
		var rev2 = instance_create_layer(x, y, "Instances", totolsk_bullet);
		rev2.direction = point_direction(x,y,player.x,player.y) - 45 + random_range(0, 90);
	}
	
	attack2_direction += 9;
	alarm[9] = room_speed * 1;
	audio_play_sound(snd_enemy_light, 1, false);
}