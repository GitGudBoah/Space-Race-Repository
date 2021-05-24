//sprites
if walking_in{
	sprite_index = alan_walk;
} else{
	if armed = false{
		if keyboard_check(ord("D")) or keyboard_check(ord("A")){
			if incontrol{
				idle = false;
				sprite_index = alan_walk;
			}
		} else{
			idle = true;
		}

		if idle{
			if dodging = false{
				if kneeling = true{
					sprite_index = alan_kneeled;
				} else{
					if cig{
						sprite_index = alan_idle;
					}
					if cig = false{
						sprite_index = alan_no_cig;
					}
				}
			}
		}

		if dodging{
			sprite_index = alan_walk;
		}
	} else{
		if rifle{
			sprite_index = alan_rifle;
		} else{
			if shooting{
				sprite_index = alan_shooting;
			} else{
				sprite_index = alan_pistol;
			}
		}
	}
}
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
	
	//shooting
	if armed{
		if rifle{
			if(keyboard_check(vk_space)) && reloading = false{
				var inst = instance_create_layer(x,y, "Instances", rifle_bullet);
				inst.direction = image_angle;
				audio_play_sound(snd_explosion_big, 1, false);
				reloading = true;
				alarm[2] = room_speed * firerate;
				firing = true;
			}
		} else{
			if(keyboard_check_pressed(vk_space)){
				var inst = instance_create_layer(x,y, "Instances", bullet2);
				inst.direction = image_angle;
				audio_play_sound(snd_lasershot, 1, false);
				shooting = true;
				alarm[3] = room_speed * 1;
				firing = true;
			}
		}
	}
	
	if firing{
		image_xscale = 1;
	}
	
	//dodge
	if keyboard_check_pressed(vk_shift) && canDodge{
		canDodge = false;
		alarm[4] = room_speed * dodgeCD;
		incontrol = false
		alarm[1] = room_speed * 0.2;
		dodging = true;
		if image_xscale = -1{
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
if walking_in{
	x += 2.5;
}

if x >= 175 && canTrigger{
	canTrigger = false
	o_Wall2.x = -128;
	walking_in = false;
	com2_14.talking = true;
}