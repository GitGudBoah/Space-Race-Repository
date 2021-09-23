if o_game.game_over = false{
	if knockback = false{
		//chase player
		direction = point_direction(x,y,player.x,player.y);
		if attacking = false{
			if  distance_to_object(player) > stopping_distance{
				speed = move_speed;
			} else{
				speed = 0;
			}
		} else{
			speed = 0;
		}
	
		//shooting
		if reloading = false {
			reloading = true;
			attacking = true;
			alarm[2] = room_speed * pre_attack_immobile;
		}
	} else{
		//do nothing
	}
}

//rotate sprite
if direction < 90 or direction > 270{
	image_xscale = -1;
} else {
	image_xscale = 1;
}

if hp <= 0{
	o_game.currency += 5;
	audio_play_sound(snd_explosion_small, 1, false);

	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
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
//Wall Collision: bandit
if (place_meeting(x + hspeed, y, bandit)){
	while(!place_meeting(x + sign(hspeed), y, bandit))
		x += sign(hspeed);
	hspeed = 0;
}
if (place_meeting(x, y + vspeed, bandit)){
	while(!place_meeting(x, y + sign(vspeed), bandit))
		y += sign(vspeed);
	vspeed = 0;
}
if (place_meeting(x, y, bandit)){
	for (var i = 0; i < 1000; ++i){
		//right
		if (!place_meeting(x + i, y, bandit)){
			x += i;
			break;
		}
		//left
		if (!place_meeting(x - i, y, bandit)){
			x -= i;
			break;
		}
		//up
		if (!place_meeting(x, y - i, bandit)){
			y -= i;
			break;
		}
		//down
		if (!place_meeting(x, y + i, bandit)){
			y += i;
			break;
		}
		//top right
		if (!place_meeting(x + i, y - i, bandit)){
			x += i;
			y -= i;
			break;
		}
		//top left
		if (!place_meeting(x - i, y - i, bandit)){
			x -= i;
			y -= i;
			break;
		}
		//bottom right
		if (!place_meeting(x + i, y + i, bandit)){
			x += i;
			y += i;
			break;
		}
		//bottom left
		if (!place_meeting(x - i, y + i, bandit)){
			x -= i;
			y += i;
			break;
		}
	}
}