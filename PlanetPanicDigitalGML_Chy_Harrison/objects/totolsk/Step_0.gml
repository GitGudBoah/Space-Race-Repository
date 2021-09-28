path_speed = move_speed;

if o_game.game_over = false{
	//check for player
	if aggro = false && com_totolsk.boss_fight_triggered{
		aggro = true;
		alarm[0] = room_speed * random_range(0.5, 1.5);
		alarm[4] = room_speed * 0.5;
	}
	
	if knockback = false && reviving = false{
		//chase player
		if attacking = false{
			move_speed = 20;
		} else{
			move_speed = 0;
		}
		
		//shooting
		if reloading = false {
			reloading = true;
			attacking = true;
			if attack_counter = 0{
				//attack 1
				alarm[2] = room_speed * pre_attack_immobile;
			}
			if attack_counter = 1{
				//attack 2
				alarm[6] = room_speed * pre_attack_immobile;
			}
			if attack_counter = 2{
				//attack 3
				alarm[7] = room_speed * pre_attack_immobile;
			}
		}
	} else{
		move_speed = 0;
	}
	
	//rotate sprite
	if com_totolsk.boss_fight_triggered && reviving = false{
		image_angle = point_direction(x, y, player.x, player.y) + 270;
	}
}

if hp <= 0 && reviving = false{
	//revive
	reviving = true;
	alarm[1] = true;
	alarm[0] = true;
	image_blend = c_red;
	
	//project vital
	alarm[8] = room_speed * 2;
	alarm[9] = room_speed * 4;
	audio_play_sound(snd_tractor_beam, 1, false);
}

//Wall Collision: bandit_space1
if (place_meeting(x + hspeed, y, bandit_space1)){
	while(!place_meeting(x + sign(hspeed), y, bandit_space1))
		x += sign(hspeed);
	hspeed = 0;
}
if (place_meeting(x, y + vspeed, bandit_space1)){
	while(!place_meeting(x, y + sign(vspeed), bandit_space1))
		y += sign(vspeed);
	vspeed = 0;
}
if (place_meeting(x, y, bandit_space1)){
	for (var i = 0; i < 1000; ++i){
		//right
		if (!place_meeting(x + i, y, bandit_space1)){
			x += i;
			break;
		}
		//left
		if (!place_meeting(x - i, y, bandit_space1)){
			x -= i;
			break;
		}
		//up
		if (!place_meeting(x, y - i, bandit_space1)){
			y -= i;
			break;
		}
		//down
		if (!place_meeting(x, y + i, bandit_space1)){
			y += i;
			break;
		}
		//top right
		if (!place_meeting(x + i, y - i, bandit_space1)){
			x += i;
			y -= i;
			break;
		}
		//top left
		if (!place_meeting(x - i, y - i, bandit_space1)){
			x -= i;
			y -= i;
			break;
		}
		//bottom right
		if (!place_meeting(x + i, y + i, bandit_space1)){
			x += i;
			y += i;
			break;
		}
		//bottom left
		if (!place_meeting(x - i, y + i, bandit_space1)){
			x -= i;
			y += i;
			break;
		}
	}
}
//Wall Collision: hull_breaker_space1
if (place_meeting(x + hspeed, y, hull_breaker_space1)){
	while(!place_meeting(x + sign(hspeed), y, hull_breaker_space1))
		x += sign(hspeed);
	hspeed = 0;
}
if (place_meeting(x, y + vspeed, hull_breaker_space1)){
	while(!place_meeting(x, y + sign(vspeed), hull_breaker_space1))
		y += sign(vspeed);
	vspeed = 0;
}
if (place_meeting(x, y, hull_breaker_space1)){
	for (var i = 0; i < 1000; ++i){
		//right
		if (!place_meeting(x + i, y, hull_breaker_space1)){
			x += i;
			break;
		}
		//left
		if (!place_meeting(x - i, y, hull_breaker_space1)){
			x -= i;
			break;
		}
		//up
		if (!place_meeting(x, y - i, hull_breaker_space1)){
			y -= i;
			break;
		}
		//down
		if (!place_meeting(x, y + i, hull_breaker_space1)){
			y += i;
			break;
		}
		//top right
		if (!place_meeting(x + i, y - i, hull_breaker_space1)){
			x += i;
			y -= i;
			break;
		}
		//top left
		if (!place_meeting(x - i, y - i, hull_breaker_space1)){
			x -= i;
			y -= i;
			break;
		}
		//bottom right
		if (!place_meeting(x + i, y + i, hull_breaker_space1)){
			x += i;
			y += i;
			break;
		}
		//bottom left
		if (!place_meeting(x - i, y + i, hull_breaker_space1)){
			x -= i;
			y += i;
			break;
		}
	}
}
//Wall Collision: blood_hound_space1
if (place_meeting(x + hspeed, y, blood_hound_space1)){
	while(!place_meeting(x + sign(hspeed), y, blood_hound_space1))
		x += sign(hspeed);
	hspeed = 0;
}
if (place_meeting(x, y + vspeed, blood_hound_space1)){
	while(!place_meeting(x, y + sign(vspeed), blood_hound_space1))
		y += sign(vspeed);
	vspeed = 0;
}
if (place_meeting(x, y, blood_hound_space1)){
	for (var i = 0; i < 1000; ++i){
		//right
		if (!place_meeting(x + i, y, blood_hound_space1)){
			x += i;
			break;
		}
		//left
		if (!place_meeting(x - i, y, blood_hound_space1)){
			x -= i;
			break;
		}
		//up
		if (!place_meeting(x, y - i, blood_hound_space1)){
			y -= i;
			break;
		}
		//down
		if (!place_meeting(x, y + i, blood_hound_space1)){
			y += i;
			break;
		}
		//top right
		if (!place_meeting(x + i, y - i, blood_hound_space1)){
			x += i;
			y -= i;
			break;
		}
		//top left
		if (!place_meeting(x - i, y - i, blood_hound_space1)){
			x -= i;
			y -= i;
			break;
		}
		//bottom right
		if (!place_meeting(x + i, y + i, blood_hound_space1)){
			x += i;
			y += i;
			break;
		}
		//bottom left
		if (!place_meeting(x - i, y + i, blood_hound_space1)){
			x -= i;
			y += i;
			break;
		}
	}
}
//Wall Collision: obj_wall_spawn
if (place_meeting(x + hspeed, y, obj_wall_spawn)){
	while(!place_meeting(x + sign(hspeed), y, obj_wall_spawn))
		x += sign(hspeed);
	hspeed = 0;
}
if (place_meeting(x, y + vspeed, obj_wall_spawn)){
	while(!place_meeting(x, y + sign(vspeed), obj_wall_spawn))
		y += sign(vspeed);
	vspeed = 0;
}
if (place_meeting(x, y, obj_wall_spawn)){
	for (var i = 0; i < 1000; ++i){
		//right
		if (!place_meeting(x + i, y, obj_wall_spawn)){
			x += i;
			break;
		}
		//left
		if (!place_meeting(x - i, y, obj_wall_spawn)){
			x -= i;
			break;
		}
		//up
		if (!place_meeting(x, y - i, obj_wall_spawn)){
			y -= i;
			break;
		}
		//down
		if (!place_meeting(x, y + i, obj_wall_spawn)){
			y += i;
			break;
		}
		//top right
		if (!place_meeting(x + i, y - i, obj_wall_spawn)){
			x += i;
			y -= i;
			break;
		}
		//top left
		if (!place_meeting(x - i, y - i, obj_wall_spawn)){
			x -= i;
			y -= i;
			break;
		}
		//bottom right
		if (!place_meeting(x + i, y + i, obj_wall_spawn)){
			x += i;
			y += i;
			break;
		}
		//bottom left
		if (!place_meeting(x - i, y + i, obj_wall_spawn)){
			x -= i;
			y += i;
			break;
		}
	}
}
//Wall Collision: obj_wall_destroy
if (place_meeting(x + hspeed, y, obj_wall_destroy)){
	while(!place_meeting(x + sign(hspeed), y, obj_wall_destroy))
		x += sign(hspeed);
	hspeed = 0;
}
if (place_meeting(x, y + vspeed, obj_wall_destroy)){
	while(!place_meeting(x, y + sign(vspeed), obj_wall_destroy))
		y += sign(vspeed);
	vspeed = 0;
}
if (place_meeting(x, y, obj_wall_destroy)){
	for (var i = 0; i < 1000; ++i){
		//right
		if (!place_meeting(x + i, y, obj_wall_destroy)){
			x += i;
			break;
		}
		//left
		if (!place_meeting(x - i, y, obj_wall_destroy)){
			x -= i;
			break;
		}
		//up
		if (!place_meeting(x, y - i, obj_wall_destroy)){
			y -= i;
			break;
		}
		//down
		if (!place_meeting(x, y + i, obj_wall_destroy)){
			y += i;
			break;
		}
		//top right
		if (!place_meeting(x + i, y - i, obj_wall_destroy)){
			x += i;
			y -= i;
			break;
		}
		//top left
		if (!place_meeting(x - i, y - i, obj_wall_destroy)){
			x -= i;
			y -= i;
			break;
		}
		//bottom right
		if (!place_meeting(x + i, y + i, obj_wall_destroy)){
			x += i;
			y += i;
			break;
		}
		//bottom left
		if (!place_meeting(x - i, y + i, obj_wall_destroy)){
			x -= i;
			y += i;
			break;
		}
	}
}