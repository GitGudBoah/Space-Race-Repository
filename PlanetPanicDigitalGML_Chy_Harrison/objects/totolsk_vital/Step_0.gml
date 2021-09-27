//Die
if hp <= 0{
	if totolsk.death_counter < 6{
		if totolsk.death_counter < 5{
			totolsk.death_counter += 1;
		} else if totolsk.death_counter = 5{
			totolsk.death_counter += 1;
			totolsk.hp = totolsk.hp_max;
			totolsk.max_ammo = 30;
			totolsk.vital_ammo = 6;
			totolsk.reviving = false;
			totolsk.image_blend = c_white;
		}
	} else{
		if totolsk.death_counter = 11{
			o_game.currency += 100;
			audio_play_sound(snd_explosion_small, 1, false);
			repeat(10){
				instance_create_layer(totolsk.x,totolsk.y,"Instances",debris);
			}
			//UPGRADES: Volley
			if o_game.game_over = false and o_game.Volley{
				if player.volley_charges < o_game.volley_max{
					player.volley_charges += 1;
					v_gauge.visible = true;
					v_gauge.alarm[0] = room_speed * 1;
				}
			}
			com_totolsk.boss_defeated = true;
			var inst = instance_create_layer(totolsk.x,totolsk.y,"Instances",obj_explosion);
			inst.image_xscale = 2.6;
			inst.image_yscale = 2.6;
			instance_destroy(totolsk);
		} else{
			totolsk.death_counter += 1;
		}
	}
	
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