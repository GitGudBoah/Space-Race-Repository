if o_game.game_over = false && player.incontrol{
	if mid_dash = false{
		image_angle = point_direction(x, y, mouse_x, mouse_y);
		
		//Fire
		if(mouse_check_button(mb_left)) && reloading = false{
			if ammo > 0{
				var inst = instance_create_layer(x,y, "Instances", o_bullet_drone);
				inst.direction = random_range(image_angle - spray, image_angle + spray);
				audio_play_sound(snd_lasershot, 1, false);
				reloading = true;
				ammo -= 1;
				if ammo = 0{
					alarm[2] = room_speed * 1;
				}
				alarm[1] = room_speed * firerate;
			}
		}
	}
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