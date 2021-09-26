//attack 1: spray and pray
if reviving = false{
	if o_game.game_over = false && ammo > 0{
		ammo -= 1;
		var in1 = instance_create_layer(x, y, "Instances", totolsk_bullet);
		in1.direction = point_direction(x,y,player.x,player.y) - 45 + random_range(0, 90);
		var in2 = instance_create_layer(x, y, "Instances", totolsk_bullet);
		in2.direction = point_direction(x,y,player.x,player.y) - 45 + random_range(0, 90);
		var out1 = instance_create_layer(x, y, "Instances", totolsk_bullet);
		out1.direction = point_direction(x,y,player.x,player.y) - 50;
		var out2 = instance_create_layer(x, y, "Instances", totolsk_bullet);
		out2.direction = point_direction(x,y,player.x,player.y) + 50;
		var out3 = instance_create_layer(x, y, "Instances", totolsk_bullet);
		out3.direction = point_direction(x,y,player.x,player.y) - 55 - random_range(0, 45);
		var out4 = instance_create_layer(x, y, "Instances", totolsk_bullet);
		out4.direction = point_direction(x,y,player.x,player.y) + 55  + random_range(0, 45);
		alarm[2] = room_speed * 0.15;
		audio_play_sound(snd_machine_gun, 1, false);
	}

	if ammo <= 0{
		alarm[1] = room_speed * post_attack_immobile;
		alarm[0] = room_speed * firerate;
	}
}