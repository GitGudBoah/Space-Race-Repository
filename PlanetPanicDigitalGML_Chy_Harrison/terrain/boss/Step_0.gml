//chase the player
if (check) && (distance_to_object(player) <= range) {
	pursuit = true;
	check = false
}

if (o_game.game_over = false) && (pursuit)
{
	direction=point_direction(x,y,player.x,player.y);
	speed = 2.4;
	if reloading = false {
		var inst = instance_create_layer(x, y, "Instances", o_boss_bullet);
		inst.direction = direction;
		audio_play_sound(snd_lasershot, 1, false);
		reloading = true;
		alarm[1] = room_speed * 2;
	}
}

if hp <= 0{
	commlink.speaker = spr_com_glaucus;
	commlink.text = "Interesting... Half of that ship's guns were torn off.";
	
	score += 500;
	audio_play_sound(snd_explosion_big, 1, false);
	instance_create_layer(x,y,"Instances",explosion);
	instance_destroy();
}