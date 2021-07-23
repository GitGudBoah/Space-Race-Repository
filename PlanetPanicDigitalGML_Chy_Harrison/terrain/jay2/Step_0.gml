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
				if image_xscale = 1{
					inst.direction = 0;
				}
				if image_xscale = -1{
					inst.direction = 180;
				}
				audio_play_sound(snd_explosion_big, 1, false);
				reloading = true;
				alarm[2] = room_speed * firerate;
				firing = true;
	}
	
	//dodge
	if keyboard_check_pressed(vk_shift) && canDodge{
		canDodge = false;
		alarm[3] = room_speed * dodgeCD;
		incontrol = false
		alarm[1] = room_speed * 0.2;
		dodging = true;
		if image_xscale = -1{
			reverse = true;
		}
	}
}

if firing{
	//firing sprite?
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