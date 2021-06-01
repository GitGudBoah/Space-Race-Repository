if enemy_manager2.demeter_alive && following{
	//follow
	if distance_to_object(jay2_2) > stop_distance{
		if distance_to_object(jay2_2) > catchup_distance{
			if jay2_2.x > x{
				x += 12;
			}
			if jay2_2.x < x{
				x -= 12;
			}
		} else{
			if jay2_2.x > x{
				x += 7;
			}
			if jay2_2.x < x{
				x -= 7;
			}
		}
	}
	
	//shoot poison
	if jay2_2.incontrol{
		if (keyboard_check(ord("E"))) && reloading = false{
			var inst = instance_create_layer(x,y, "Instances", poison_shot);
			if jay2_2.image_xscale = 1{
				inst.direction = 0;
				face_r = true;
			}
			if jay2_2.image_xscale = -1{
				inst.direction = 180;
				face_r = false;
			}
			audio_play_sound(snd_lasershot, 1, false);
			reloading = true;
			alarm[0] = room_speed * firerate;
			firing = true;
			//cooldown indicator
			cooldown_indicator = "POISON: 4";
			alarm[1] = room_speed * 1;
		}
	}
}

if firing{
	if face_r{
		image_xscale = 1;
	} else{
		image_xscale = -1;
	}
}