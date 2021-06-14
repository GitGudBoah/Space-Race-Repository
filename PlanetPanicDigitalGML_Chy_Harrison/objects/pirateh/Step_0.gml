if access1{
	stop_distance = 400;
}
if access2{
	stop_distance = 500;
}
if access3{
	stop_distance = 600;
}
if access4{
	stop_distance = 700;
}
//chase the player
if distance_to_object(enemy_manager3.target) <= range && canTrigger{
	audio_play_sound(snd_alien_alert_smooth, 1, false);
	encountered = true;
	canTrigger = false;
	canTrigger2 = true;
} else if distance_to_object(enemy_manager3.target) > range && canTrigger2{
	if encountered{
		audio_play_sound(snd_menu_switch, 1, false);
	}
	canTrigger = true;
	canTrigger2 = false;
	//shoot
	if access1{
		fire_order3.in_use1 = false;
		access1 = false;
	}
	if access2{
		fire_order3.in_use2 = false;
		access2 = false;
	}
	if access3{
		fire_order3.in_use3 = false;
		access3 = false;
	}
	if access4{
		fire_order3.in_use4 = false;
		access4 = false;
	}
}

if enemy_manager3.game_over = false && mobile{
	if canTrigger = false{
		//shoot - access variable
		if access1 or access2 or access3 or access4{
			//do nothing
		} else if fire_order3.in_use1 = false{
			fire_order3.in_use1 = true;
			access1 = true;
		}
		if access1 or access2 or access3 or access4{
			//do nothing
		} else if fire_order3.in_use2 = false{
			fire_order3.in_use2 = true;
			access2 = true;
		}
		if access1 or access2 or access3 or access4{
			//do nothing
		} else if fire_order3.in_use3 = false{
			fire_order3.in_use3 = true;
			access3 = true;
		}
		if access1 or access2 or access3 or access4{
			//do nothing
		} else if fire_order3.in_use4 = false{
			fire_order3.in_use4 = true;
			access4 = true;
		}
		//shoot- fire1
		if fire_order3.fire1 && access1{
			var inst = instance_create_layer(x, y, "Instances", bandit_bulleth);
			if enemy_manager3.target.x > x{
				inst.direction = 0;
			}
			if enemy_manager3.target.x < x{
				inst.direction = 180;
			}
			audio_play_sound(snd_lasershot, 1, false);
		}
		//shoot- fire2
		if fire_order3.fire2 && access2{
			var inst = instance_create_layer(x, y, "Instances", bandit_bulleth);
			if enemy_manager3.target.x > x{
				inst.direction = 0;
			}
			if enemy_manager3.target.x < x{
				inst.direction = 180;
			}
			audio_play_sound(snd_lasershot, 1, false);
		}
		//shoot- fire3
		if fire_order3.fire3 && access3{
			var inst = instance_create_layer(x, y, "Instances", bandit_bulleth);
			if enemy_manager3.target.x > x{
				inst.direction = 0;
			}
			if enemy_manager3.target.x < x{
				inst.direction = 180;
			}
			audio_play_sound(snd_lasershot, 1, false);
		}
		//shoot- fire4
		if fire_order3.fire4 && access4{
			var inst = instance_create_layer(x, y, "Instances", bandit_bulleth);
			if enemy_manager3.target.x > x{
				inst.direction = 0;
			}
			if enemy_manager3.target.x < x{
				inst.direction = 180;
			}
			audio_play_sound(snd_lasershot, 1, false);
		}
		//move
		if distance_to_object(enemy_manager3.target) > stop_distance{
			if enemy_manager3.target.x > x{
				x += speeed;
			}
			if enemy_manager3.target.x < x{
				x -= speeed;
			}
		}
	}
}

//health
if hp <= 0{
	//shoot
	if access1{
		fire_order3.in_use1 = false;
		access1 = false;
	}
	if access2{
		fire_order3.in_use2 = false;
		access2 = false;
	}
	if access3{
		fire_order3.in_use3 = false;
		access3 = false;
	}
	if access4{
		fire_order3.in_use4 = false;
		access4 = false;
	}

	//die
	audio_play_sound(snd_explosion_small, 1, false);
	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	instance_destroy();
}