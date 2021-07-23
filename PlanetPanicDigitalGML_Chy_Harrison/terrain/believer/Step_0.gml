//shooting
if reloading = false{
	var inst = instance_create_layer(x,y, "Instances", bolt);
	if image_xscale = 1{
		inst.direction = 0;
	}
	if image_xscale = -1{
		inst.direction = 180;
	}
	audio_play_sound(snd_lasershot, 1, false);
	reloading = true;
	alarm[0] = room_speed * firerate;
}

//hide
if hide{
	if distance_to_object(jay2_2) <= 1100{
		believer_hp.alive = false;
		instance_destroy();
	}
}

//hp
healthbar_x = x;
healthbar_y = y - 200;
if hp <= 0{
	hp = hp_max;
	audio_play_sound(snd_tentacle_attack, 1, false);
	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	x += knockback_distance;
}

//end fight
if distance_to_object(trap) <= 180 && canTrigger{
	canTrigger = false
	x = trap.x;
	boss_fight = false;
	reloading = true;
	believer_hp.alive = false;
	com2_13.counter += 1;
}

//fade in
if mobile{
	image_blend = make_color_hsv(0, 0, value);
}

if value < 500{
	value += 5;
}