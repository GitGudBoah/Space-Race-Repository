//Die
if hp <= 0{
	if blood_hound_space1.death_counter >= 1{
		audio_play_sound(snd_explosion_small, 1, false);
		repeat(10){
			instance_create_layer(blood_hound_space1.x,blood_hound_space1.y,"Instances",debris);
		}
		//UPGRADES: Volley
		if o_game.game_over = false and o_game.Volley{
			if player.volley_charges < o_game.volley_max{
				player.volley_charges += 1;
			}
		}
		open_space_run.killcount += 1;
		instance_destroy(blood_hound_space1);
	} else{
		blood_hound_space1.death_counter += 1;
		blood_hound_space1.hp = blood_hound_space1.hp_max;
		blood_hound_space1.reviving = false;
		blood_hound_space1.image_blend = c_white;
	}
	
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