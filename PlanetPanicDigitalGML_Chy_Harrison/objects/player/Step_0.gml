//controls
if incontrol{
	image_angle = point_direction(x, y, mouse_x, mouse_y);
	if mid_dash = false{
		//UPGRADES: Dash
		if (o_game.Dash) and (mouse_check_button_pressed(mb_right)){
			mid_dash = true;
			direction = point_direction(x, y, mouse_x, mouse_y);
			speed = 30;
			alarm[1] = room_speed * dash_duration;
			audio_play_sound(snd_explosion_small, 1, false);
		}
		
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
		
		//UPGRADES: Volley
		if o_game.Volley{
			if mouse_wheel_down() && volley_charges > 0{
				var inst1 = instance_create_layer(x, y, "Instances", o_bullet);
				inst1.direction = image_angle - 5;
				var inst2 = instance_create_layer(x, y, "Instances", o_bullet);
				inst2.direction = image_angle + 5;
				var inst3 = instance_create_layer(x, y, "Instances", o_bullet);
				inst3.direction = image_angle - 15;
				var fourth = instance_create_layer(x, y, "Instances", o_bullet);
				fourth.direction = image_angle + 15;
				audio_play_sound(snd_explosion_small, 2, false);
				volley_charges -= 1;
			}
		}
		
		//UPGRADES: Remote Drone
		if o_game.Remote_Drone{
			if keyboard_check_pressed(vk_space) && drone_cooldown = false{
				drone_cooldown = true;
				var inst4 = instance_create_layer(x, y, "Instances", remote_drone);
				inst4.direction = image_angle;
				inst4.image_angle = image_angle;
			}
		}
	}
	
	//Break
	if(keyboard_check(vk_shift)){
		mid_dash = false;
		alarm[1] = false;
		speed = 0;
	}
	
	//UPGRADES: Armor
	if o_game.Armor and armored{
		if mouse_wheel_up(){
			armored = false;
			alarm[4] = true;
		}
	}
}

//speed cap and decay
if mid_dash = false{
	if speed > 25{
		speed = 25;
	}
	if speed > 10{
		speed -= 0.35;
	}
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