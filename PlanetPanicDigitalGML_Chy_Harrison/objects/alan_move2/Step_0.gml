if incontrol{
	//movement
	if(keyboard_check(ord("D"))){
	x += 8;
	}
	if(keyboard_check(ord("A"))){
	x -= 8;
	}
	
	//shooting
	if rifle{
		if(keyboard_check(vk_space)) && reloading = false{
			var inst = instance_create_layer(x,y, "Instances", rifle_bullet);
			inst.direction = image_angle;
			audio_play_sound(snd_explosion_big, 1, false);
			reloading = true;
			alarm[2] = room_speed * firerate;
		}
	} else{
		if(keyboard_check_pressed(vk_space)){
			var inst = instance_create_layer(x,y, "Instances", bullet2);
			inst.direction = image_angle;
			audio_play_sound(snd_lasershot, 1, false);
		}
	}
	
	//dodge
	if keyboard_check_pressed(vk_shift){
		incontrol = false
		alarm[1] = room_speed * 0.2;
		dodging = true;
		if keyboard_check(ord("A")){
			reverse = true;
		}
	}
}

if dodging{
	if reverse{
		speed = -16;
	} else{
		speed = 16;
	}
}

//walk-in
if activated{
	x += 2.5;
}

if x >= 175 && canTrigger{
	canTrigger = false
	activated = false;
	o_Wall4.x = -128;
	incontrol = true;
}

// health system - add o_game
if hp <= 0
{
	enemy_manager.alive = false;
	enemy_manager.alarm[0] = room_speed * 1;
	
	repeat(10)
	{
	instance_create_layer(x,y,"Instances",debris);
	}

	instance_destroy();
}