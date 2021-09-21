//attack
if o_game.game_over = false{
	var inst = instance_create_layer(x, y, "Instances", bandit_bullet);
	inst.direction = point_direction(x,y,player.x,player.y);
	var inst1 = instance_create_layer(x, y, "Instances", bandit_bullet);
	inst1.direction = point_direction(x,y,player.x,player.y) - 10;
	var inst2 = instance_create_layer(x, y, "Instances", bandit_bullet);
	inst2.direction = point_direction(x,y,player.x,player.y) + 10;
	audio_play_sound(snd_lasershot, 1, false);
}

alarm[1] = room_speed * post_attack_immobile;
alarm[0] = room_speed * firerate;