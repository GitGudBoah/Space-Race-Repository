//chase the player
if (check) && (distance_to_object(player) <= range) {
	pursuit = true;
	check = false
}

if (o_game.game_over = false) && (pursuit)
{
	direction=point_direction(x,y,player.x,player.y);
	speed = 2;
	if reloading = false {
		var inst = instance_create_layer(x, y, "Instances", o_boss_bullet);
		inst.direction = direction;
		audio_play_sound(snd_lasershot, 1, false);
		reloading = true;
		alarm[1] = room_speed * 2;
	}
}

if (place_meeting(x,y,o_Wall))
{
	speed = 0;	
}

if hp <= 0{
	with (o_game){
		alarm[1] = room_speed * 1;
	}
	score += 9001;
	repeat(20){
	instance_create_layer(x,y,"Instances",debris);
	}
	instance_destroy();
}