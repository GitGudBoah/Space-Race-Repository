path_speed = move_speed;

if o_game.game_over = false{
	//check for player
	if aggro = false && open_space_run.chamber_start{
		aggro = true;
		alarm[0] = room_speed * random_range(0.5, 1.5);
		alarm[4] = room_speed * 0.5;
		audio_play_sound(snd_alarm_low, 2, false);
	}

	if knockback = false && reviving = false{
		//chase player
		if attacking = false{
			if  distance_to_object(player) > stopping_distance{
				move_speed = 8;
			} else{
				move_speed = 0;
			}
		} else{
			move_speed = 0;
		}
		
		//shooting
		if reloading = false {
			reloading = true;
			attacking = true;
			alarm[2] = room_speed * pre_attack_immobile;
		}
	} else{
		move_speed = 0;
	}
}

//rotate sprite
if direction < 90 or direction > 270{
	image_xscale = -1;
} else {
	image_xscale = 1;
}

if hp <= 0 && reviving = false{
	//revive
	reviving = true;
	alarm[1] = true;
	alarm[0] = true;
	image_blend = c_red;
	
	//project vital
	var vital = instance_create_layer(x, y, "enemies", bhs1_vital);
	vital.direction = image_angle;
	vital.image_angle = image_angle;
	audio_play_sound(snd_enemy_heavy, 1, false);
}

//Wall Collision: obj_wall
if (place_meeting(x + hspeed, y, obj_wall)){
	while(!place_meeting(x + sign(hspeed), y, obj_wall))
		x += sign(hspeed);
	hspeed = 0;
}
if (place_meeting(x, y + vspeed, obj_wall)){
	while(!place_meeting(x, y + sign(vspeed), obj_wall))
		y += sign(vspeed);
	vspeed = 0;
}
if (place_meeting(x, y, obj_wall)){
	for (var i = 0; i < 1000; ++i){
		//right
		if (!place_meeting(x + i, y, obj_wall)){
			x += i;
			break;
		}
		//left
		if (!place_meeting(x - i, y, obj_wall)){
			x -= i;
			break;
		}
		//up
		if (!place_meeting(x, y - i, obj_wall)){
			y -= i;
			break;
		}
		//down
		if (!place_meeting(x, y + i, obj_wall)){
			y += i;
			break;
		}
		//top right
		if (!place_meeting(x + i, y - i, obj_wall)){
			x += i;
			y -= i;
			break;
		}
		//top left
		if (!place_meeting(x - i, y - i, obj_wall)){
			x -= i;
			y -= i;
			break;
		}
		//bottom right
		if (!place_meeting(x + i, y + i, obj_wall)){
			x += i;
			y += i;
			break;
		}
		//bottom left
		if (!place_meeting(x - i, y + i, obj_wall)){
			x -= i;
			y += i;
			break;
		}
	}
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