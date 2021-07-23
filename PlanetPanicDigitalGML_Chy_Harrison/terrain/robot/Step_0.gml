if r_enter{
	x -= 3;
	if canTrigger{
		alarm[2] = room_speed * 7;
		canTrigger = false;
	}
}

if enemy_manager.alive && enemy_manager.hostile{
	sprite_index = spr_robot_shooting;
	direction=point_direction(x,y,alan_move2.x,alan_move2.y);
	speed = 2.4;
	if reloading = false {
		var inst = instance_create_layer(x, y, "Instances", robot_bullet);
		inst.direction = direction;
		audio_play_sound(snd_lasershot, 1, false);
		reloading = true;
		alarm[1] = room_speed * 1.5;
	}
}

if hp <= 0{
	audio_play_sound(snd_explosion_big, 1, false);
	instance_create_layer(x,y,"Instances",explosion);
	enemy_manager.counter += 1;
	instance_destroy();
}