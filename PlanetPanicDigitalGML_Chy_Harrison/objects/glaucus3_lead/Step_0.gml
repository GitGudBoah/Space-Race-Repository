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
	//verticality
	if collision_point(x, y, pipes, false, true){
		if(keyboard_check_pressed(ord("W"))){
			//y = pipes_floor;
			climbing = true;
		}
	}
	if collision_point(x, y, water, false, true){
		if(keyboard_check_pressed(ord("S"))){
			//y = water_floor;
			descending = true;
		}
	}
	if y = pipes_floor{
		if(keyboard_check_pressed(ord("S"))){
			//y = neutral_floor;
			descending2 = true;
		}
	}
	if y = water_floor{
		if(keyboard_check_pressed(ord("W"))){
			//y = neutral_floor;
			climbing2 = true;
		}
	}
	
	//shooting
	if(keyboard_check_pressed(ord("Q"))) && reloading = false{
		if knife_ammo > 0{
			var inst = instance_create_layer(x,y, "Instances", knife);
			if image_xscale = 1{
				inst.direction = 0;
			}
			if image_xscale = -1{
				inst.direction = 180;
			}
			audio_play_sound(snd_tentacle_attack, 1, false);
			reloading = true;
			alarm[2] = room_speed * firerate;
			firing = true;
			knife_ammo -= 1;
		}
	}
	
	//dodge
	if keyboard_check_pressed(vk_shift) && canDodge{
		canDodge = false;
		alarm[3] = room_speed * dodgeCD;
		incontrol = false;
		dodging = true;
		alarm[1] = room_speed * 0.2;
		if image_xscale = -1{
			reverse = true;
		}
	}
}

//verticality
if climbing{
	if y > pipes_floor{
		incontrol = false;
		y -= 65;
	} else{
		y = pipes_floor;
		incontrol = true;
		climbing = false;
	}
}
if climbing2{
	if y > neutral_floor{
		incontrol = false;
		y -= 65;
	} else{
		y = neutral_floor;
		incontrol = true;
		climbing2 = false;
	}
}
if descending{
	if y < water_floor{
		incontrol = false;
		y += 65;
	} else{
		y = water_floor;
		incontrol = true;
		descending = false;
	}
}
if descending2{
	if y < neutral_floor{
		incontrol = false;
		y += 65;
	} else{
		y = neutral_floor;
		incontrol = true;
		descending2 = false;
	}
}

//shooting
if firing{
	//firing sprite?
}
//knife ammo indicator
if knife_ammo = 8{
	knife_ammo_indicator = "Knife: 8";
}
if knife_ammo = 7{
	knife_ammo_indicator = "Knife: 7";
}
if knife_ammo = 6{
	knife_ammo_indicator = "Knife: 6";
}
if knife_ammo = 5{
	knife_ammo_indicator = "Knife: 5";
}
if knife_ammo = 4{
	knife_ammo_indicator = "Knife: 4";
}
if knife_ammo = 3{
	knife_ammo_indicator = "Knife: 3";
}
if knife_ammo = 2{
	knife_ammo_indicator = "Knife: 2";
}
if knife_ammo = 1{
	knife_ammo_indicator = "Knife: 1";
}
if knife_ammo <= 0{
	knife_ammo_indicator = "Knife: OUT";
}
//overload indicator
if charged{
	if overload = 100{
		overload_indicator = "OVERLOAD: 0%";
	}
	if overload = 90{
		overload_indicator = "OVERLOAD: 10%";
	}
	if overload = 80{
		overload_indicator = "OVERLOAD: 20%";
	}
	if overload = 70{
		overload_indicator = "OVERLOAD: 30%";
	}
	if overload = 60{
		overload_indicator = "OVERLOAD: 40%";
	}
	if overload = 50{
		overload_indicator = "OVERLOAD: 50%";
	}
	if overload = 40{
		overload_indicator = "OVERLOAD: 60%";
	}
	if overload = 30{
		overload_indicator = "OVERLOAD: 70%";
	}
	if overload = 20{
		overload_indicator = "OVERLOAD: 80%";
	}
	if overload = 10{
		overload_indicator = "OVERLOAD: 90%";
	}
	if overload = 0{
		overload_indicator = "OVERLOAD: 100%";
	}
	if overload = -1{
		overload_indicator = "OVERLOAD: ...";
	}
}

//dodge
if dodging{
	if reverse{
		speed = -16;
	} else{
		speed = 16;
	}
}

//health
if hp <= 0{
	enemy_manager3.game_over = true;
	
	repeat(10)
	{
	instance_create_layer(x,y,"Instances",debris);
	}

	instance_destroy();
}