//charge
if com3h_3.charge{
	if x >= 1800{
		com3h_3.charge = false;
		sprite_index = spr_elroy_concerned;
		shoot_me = true;
	} else{
		sprite_index = spr_elroy_run;
		x += 12;
	}
}

//shoot
if shoot_me{
	if reloading = false{
		var inst = instance_create_layer(x + 300,pirateh.y, "Instances", bandit_bulleth);
		inst.direction = 180;
		audio_play_sound(snd_lasershot, 1, false);
		reloading = true;
		alarm[0] = room_speed * firerate;
	}
}

//health
if hp <= 0{
	com3h_3.alarm[0] = room_speed * 1;
	audio_play_sound(snd_explosion_small, 1, false);
	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	instance_create_layer(x,y,"Instances",explosion)
	
	view_camera[0] = camera_create_view(camera_shake.view_x, camera_shake.view_y, 2100, 1500, 0, -1, -1, -1, 1050, 750);
	camera_shake.range = 100;
	
	instance_destroy();
}