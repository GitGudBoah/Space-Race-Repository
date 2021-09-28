//attack 3: frenzy fire
if reviving = false{
	if o_game.game_over = false && ammo > 0{
		ammo -= 1;
		var in1 = instance_create_layer(x, y, "Instances", totolsk_bullet);
		in1.direction = point_direction(x,y,player.x,player.y) + attack3_dir;
		var in2 = instance_create_layer(x, y, "Instances", totolsk_bullet);
		in2.direction = point_direction(x,y,player.x,player.y) - 45 + attack3_dir;
		var in3 = instance_create_layer(x, y, "Instances", totolsk_bullet);
		in3.direction = point_direction(x,y,player.x,player.y) + 45 + attack3_dir;
		var rando = instance_create_layer(x, y, "Instances", totolsk_bullet);
		rando.direction = point_direction(x,y,player.x,player.y) - 40 + random_range(0, 80) + attack3_dir;
		
		if counter = 0 && attack3_dir > -90{
			attack3_dir -= 12;
		} else{
			counter = 1;
			attack3_dir += 12;
		}
		alarm[7] = room_speed * 0.15;
		audio_play_sound(snd_machine_gun, 1, false);
	}

	if ammo <= 0{
		alarm[1] = room_speed * post_attack_immobile;
		alarm[0] = room_speed * firerate;
		counter = 0;
		attack3_dir = 90;
	}
}