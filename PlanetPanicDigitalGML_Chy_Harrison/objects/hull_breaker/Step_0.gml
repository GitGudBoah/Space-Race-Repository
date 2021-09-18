if room = blackhole_city{
	if com_bcity.second_phase && canTrigger{
		canTrigger = false;
		alarm[0] = room_speed * random_range(0.5, 1.5);
	}
}

path_speed = move_speed;

if o_game.game_over = false{
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
}

//rotate sprite
if direction < 90 or direction > 270{
	image_xscale = -1;
} else {
	image_xscale = 1;
}

if hp <= 0{
	audio_play_sound(snd_explosion_small, 1, false);

	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	if room = chamber1_1{
		spawner_chamber1_1.kill_count += 1;
	}
	if room = blackhole_city{
		com_bcity.kill_count2 += 1;
	}
	//UPGRADES: Volley
	if o_game.game_over = false and o_game.Volley{
		if player.volley_charges < o_game.volley_max{
			player.volley_charges += 1;
		}
	}
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
//Wall Collision: bandit_smart
if (place_meeting(x + hspeed, y, bandit_smart)){
	while(!place_meeting(x + sign(hspeed), y, bandit_smart))
		x += sign(hspeed);
	hspeed = 0;
}
if (place_meeting(x, y + vspeed, bandit_smart)){
	while(!place_meeting(x, y + sign(vspeed), bandit_smart))
		y += sign(vspeed);
	vspeed = 0;
}
if (place_meeting(x, y, bandit_smart)){
	for (var i = 0; i < 1000; ++i){
		//right
		if (!place_meeting(x + i, y, bandit_smart)){
			x += i;
			break;
		}
		//left
		if (!place_meeting(x - i, y, bandit_smart)){
			x -= i;
			break;
		}
		//up
		if (!place_meeting(x, y - i, bandit_smart)){
			y -= i;
			break;
		}
		//down
		if (!place_meeting(x, y + i, bandit_smart)){
			y += i;
			break;
		}
		//top right
		if (!place_meeting(x + i, y - i, bandit_smart)){
			x += i;
			y -= i;
			break;
		}
		//top left
		if (!place_meeting(x - i, y - i, bandit_smart)){
			x -= i;
			y -= i;
			break;
		}
		//bottom right
		if (!place_meeting(x + i, y + i, bandit_smart)){
			x += i;
			y += i;
			break;
		}
		//bottom left
		if (!place_meeting(x - i, y + i, bandit_smart)){
			x -= i;
			y += i;
			break;
		}
	}
}
//Wall Collision: hull_breaker
if (place_meeting(x + hspeed, y, hull_breaker)){
	while(!place_meeting(x + sign(hspeed), y, hull_breaker))
		x += sign(hspeed);
	hspeed = 0;
}
if (place_meeting(x, y + vspeed, hull_breaker)){
	while(!place_meeting(x, y + sign(vspeed), hull_breaker))
		y += sign(vspeed);
	vspeed = 0;
}
if (place_meeting(x, y, hull_breaker)){
	for (var i = 0; i < 1000; ++i){
		//right
		if (!place_meeting(x + i, y, hull_breaker)){
			x += i;
			break;
		}
		//left
		if (!place_meeting(x - i, y, hull_breaker)){
			x -= i;
			break;
		}
		//up
		if (!place_meeting(x, y - i, hull_breaker)){
			y -= i;
			break;
		}
		//down
		if (!place_meeting(x, y + i, hull_breaker)){
			y += i;
			break;
		}
		//top right
		if (!place_meeting(x + i, y - i, hull_breaker)){
			x += i;
			y -= i;
			break;
		}
		//top left
		if (!place_meeting(x - i, y - i, hull_breaker)){
			x -= i;
			y -= i;
			break;
		}
		//bottom right
		if (!place_meeting(x + i, y + i, hull_breaker)){
			x += i;
			y += i;
			break;
		}
		//bottom left
		if (!place_meeting(x - i, y + i, hull_breaker)){
			x -= i;
			y += i;
			break;
		}
	}
}