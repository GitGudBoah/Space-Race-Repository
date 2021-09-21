//attack
if reviving = false{
	if o_game.game_over = false && ammo > 0{
		ammo -= 1;
		var inst = instance_create_layer(x, y, "Instances", bandit_bullet);
		inst.direction = point_direction(x,y,player.x,player.y) - 45 + random_range(0, 90);
		var inst1 = instance_create_layer(x, y, "Instances", bandit_bullet);
		inst1.direction = point_direction(x,y,player.x,player.y) - 50;
		var inst2 = instance_create_layer(x, y, "Instances", bandit_bullet);
		inst2.direction = point_direction(x,y,player.x,player.y) + 50;
		alarm[2] = room_speed * 0.25;
		audio_play_sound(snd_enemy_light, 1, false);
	}
	
	if ammo <= 0{
		alarm[1] = room_speed * post_attack_immobile;
		alarm[0] = room_speed * firerate;
	}
}