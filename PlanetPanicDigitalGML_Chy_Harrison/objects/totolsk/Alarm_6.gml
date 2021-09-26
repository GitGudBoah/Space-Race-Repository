//attack 2: aoe pattern
if reviving = false{
	if o_game.game_over = false && ammo > 0{
		ammo -= 1;
		repeat(10){
			var inst = instance_create_layer(x, y, "Instances", totolsk_bullet);
			inst.direction = attack2_direction;
			attack2_direction += 36;
		}
	
		attack2_direction += 9;
		alarm[6] = room_speed * 0.25;
		audio_play_sound(snd_enemy_light, 1, false);
	}

	if ammo <= 0{
		alarm[1] = room_speed * post_attack_immobile;
		alarm[0] = room_speed * firerate;
		attack2_direction = 0;
	}
}