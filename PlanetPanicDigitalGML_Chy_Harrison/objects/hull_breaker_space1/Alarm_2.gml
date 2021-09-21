//attack: stage 1
if o_game.game_over = false{
	var inst = instance_create_layer(x, y, "Instances", bandit_bullet);
	inst.direction = point_direction(x,y,player.x,player.y);
	var inst1 = instance_create_layer(x, y, "Instances", bandit_bullet);
	inst1.direction = point_direction(x,y,player.x,player.y) - 5;
	var inst2 = instance_create_layer(x, y, "Instances", bandit_bullet);
	inst2.direction = point_direction(x,y,player.x,player.y) + 5;
	var inst3 = instance_create_layer(x, y, "Instances", bandit_bullet);
	inst3.direction = point_direction(x,y,player.x,player.y) - 10;
	var inst4 = instance_create_layer(x, y, "Instances", bandit_bullet);
	inst4.direction = point_direction(x,y,player.x,player.y) + 10;
	audio_play_sound(snd_enemy_light, 1, false);
}

alarm[4] = room_speed * 0.75;