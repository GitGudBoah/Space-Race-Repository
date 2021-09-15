//wall bounce
//move_bounce_solid(false);
//if collision_point(x, y, o_Wall2, true, true){
//	vspeed *= -1;
//}
//if collision_point(x, y, o_Wall4, true, true){
//	hspeed *= -1;
//}

//controls
if incontrol{
	image_angle = point_direction(x, y, mouse_x, mouse_y);
	
	if(keyboard_check(ord("A"))){
		motion_add(180, 0.5);
	}

	if(keyboard_check(ord("D"))){
		motion_add(0, 0.5);
	}

	if(keyboard_check(ord("W"))){
		motion_add(90, 0.5);
	}
	if(keyboard_check(ord("S"))){
		motion_add(270, 0.5);
	}

	if(mouse_check_button(mb_left)) && reloading = false{
		if ammo > 0{
			var inst = instance_create_layer(x,y, "Instances", o_bullet);
			inst.direction = random_range(image_angle - spray, image_angle + spray);
			audio_play_sound(snd_lasershot, 1, false);
			reloading = true;
			ammo -= 1;
			if ammo = 0{
				audio_play_sound(snd_menu_switch, 1, false);
				image_blend = c_red;
				alarm[3] = room_speed * reload_speed;
				if reload_buff{
					firerate = 0.15;
				}
			}
			alarm[2] = room_speed * firerate;
		}
	}

	if(keyboard_check(vk_shift)){
		speed = 0;
	}
}

//speed cap and decay
if speed > 25{
	speed = 25;
}
if speed > 10{
	speed -= 0.35;
}

// health system
if hp > hp_max{
	hp = hp_max;
}

if hp <= 0
{
	if rm1{
		with (o_game){
			game_over = true;
		}
	
		with (o_game){
			alarm[0] = room_speed * 1;
		}
	} else{
		enemy_manager3.game_over = true;
	}
	
	repeat(10)
	{
	instance_create_layer(x,y,"Instances",debris);
	}

	instance_destroy();
}

//Wall Collision: obj_wall
if (place_meeting(x + speed, y, obj_wall)){
	while(!place_meeting(x + sign(speed), y, obj_wall))
		x += sign(speed);
	speed = 0;
}
if (place_meeting(x, y + speed, obj_wall)){
	while(!place_meeting(x, y + sign(speed), obj_wall))
		y += sign(speed);
	speed = 0;
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
