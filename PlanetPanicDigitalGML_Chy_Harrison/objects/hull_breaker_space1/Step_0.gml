path_speed = move_speed;

if o_game.game_over = false{
	//check for player
	if aggro = false && open_space_run.chamber_start{
		aggro = true;
		alarm[0] = room_speed * random_range(0.5, 1.5);
		alarm[5] = room_speed * 0.5;
	}
	
	if knockback = false{
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
	
	//rotate sprite
	image_angle = point_direction(x, y, player.x, player.y) + 270;
}

if hp <= 0{
	o_game.currency += 20;
	audio_play_sound(snd_explosion_small, 1, false);

	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	//UPGRADES: Volley
	if o_game.game_over = false and o_game.Volley{
		if player.volley_charges < o_game.volley_max{
			player.volley_charges += 1;
			v_gauge.visible = true;
			v_gauge.alarm[0] = room_speed * 1;
		}
	}
	open_space_run.killcount += 1;
	instance_destroy();
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