//attack: stage 2
if o_game.game_over = false{
	var inst = instance_create_layer(x, y, "Instances", bandit_bullet);
	inst.direction = point_direction(x,y,player.x,player.y) + 20;
	var inst1 = instance_create_layer(x, y, "Instances", bandit_bullet);
	inst1.direction = point_direction(x,y,player.x,player.y) - 20;
	var inst2 = instance_create_layer(x, y, "Instances", bandit_bullet);
	inst2.direction = point_direction(x,y,player.x,player.y) + 25;
	var inst3 = instance_create_layer(x, y, "Instances", bandit_bullet);
	inst3.direction = point_direction(x,y,player.x,player.y) - 25;
	var inst4 = instance_create_layer(x, y, "Instances", bandit_bullet);
	inst4.direction = point_direction(x,y,player.x,player.y) + 30;
	var inst5 = instance_create_layer(x, y, "Instances", bandit_bullet);
	inst5.direction = point_direction(x,y,player.x,player.y) - 30;
	audio_play_sound(snd_lasershot, 1, false);
}

alarm[1] = room_speed * post_attack_immobile;
alarm[0] = room_speed * firerate;