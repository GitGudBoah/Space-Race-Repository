//chase the player
if (check) && (distance_to_object(gagarin) <= range) {
	pursuit = true;
	audio_play_sound(snd_alien_alert_smooth, 1, false);
	check = false;
}

if enemy_manager2.game_over = false && pursuit
{
	direction=point_direction(x,y,gagarin.x,gagarin.y);
	if distance_to_object(gagarin) <= slowing_distance{
		speed = 6;
		if distance_to_object(gagarin) <= stopping_distance{
			speed = 0;
		}
	} else{
		speed = 12;
	}
	
		//shoot - access variable
		if access1 or access2 or access3 or access4{
			//do nothing
		} else if fire_order2.in_use1 = false{
			fire_order2.in_use1 = true;
			access1 = true;
		}
		if access1 or access2 or access3 or access4{
			//do nothing
		} else if fire_order2.in_use2 = false{
			fire_order2.in_use2 = true;
			access2 = true;
		}
		if access1 or access2 or access3 or access4{
			//do nothing
		} else if fire_order2.in_use3 = false{
			fire_order2.in_use3 = true;
			access3 = true;
		}
		if access1 or access2 or access3 or access4{
			//do nothing
		} else if fire_order2.in_use4 = false{
			fire_order2.in_use4 = true;
			access4 = true;
		}
		//shoot- fire1
		if fire_order2.fire1 && access1{
			var inst = instance_create_layer(x, y, "Instances", wailing);
			inst.direction = direction;
			audio_play_sound(snd_explosion_big, 1, false);
		}
		//shoot- fire2
		if fire_order2.fire2 && access2{
			var inst = instance_create_layer(x, y, "Instances", wailing);
			inst.direction = direction;
			audio_play_sound(snd_explosion_big, 1, false);
		}
		//shoot- fire3
		if fire_order2.fire3 && access3{
			var inst = instance_create_layer(x, y, "Instances", wailing);
			inst.direction = direction;
			audio_play_sound(snd_explosion_big, 1, false);
		}
		//shoot- fire4
		if fire_order2.fire4 && access4{
			var inst = instance_create_layer(x, y, "Instances", wailing);
			inst.direction = direction;
			audio_play_sound(snd_explosion_big, 1, false);
		}
}

//rotate sprite
if direction < 90 or direction > 270{
	image_xscale = -1;
} else {
	image_xscale = 1;
}

if hp <= 0{
	//shoot
	if access1{
		fire_order2.in_use1 = false;
		access1 = false;
	}
	if access2{
		fire_order2.in_use2 = false;
		access2 = false;
	}
	if access3{
		fire_order2.in_use3 = false;
		access3 = false;
	}
	if access4{
		fire_order2.in_use4 = false;
		access4 = false;
	}
	
	audio_play_sound(snd_explosion_small, 1, false);

	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	instance_destroy();
}