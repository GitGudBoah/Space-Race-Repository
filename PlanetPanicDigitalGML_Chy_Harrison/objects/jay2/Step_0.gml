//controls
if incontrol{
	//movement
	if(keyboard_check(ord("D"))){
	x += 8;
	image_xscale = 1;
	}
	if(keyboard_check(ord("A"))){
	x -= 8;
	image_xscale = -1;
	}

	if(keyboard_check(vk_space)) && reloading = false{
				var inst = instance_create_layer(x,y, "Instances", rifle_bullet);
				inst.direction = image_angle;
				audio_play_sound(snd_explosion_big, 1, false);
				reloading = true;
				alarm[2] = room_speed * firerate;
				firing = true;
	}
	
	//dodge
	if keyboard_check_pressed(vk_shift){
		incontrol = false
		alarm[1] = room_speed * 0.2;
		dodging = true;
		if image_xscale = -1{
			reverse = true;
		}
	}
}

if firing{
	image_xscale = 1;
}

if dodging{
	if reverse{
		speed = -16;
	} else{
		speed = 16;
	}
}

// health system
if hp <= 0
{
	//enemy_manager2.game_over = true;
	
	repeat(10)
	{
	instance_create_layer(x,y,"Instances",debris);
	}

	instance_destroy();
}