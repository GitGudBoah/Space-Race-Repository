//Break
if(keyboard_check(vk_shift)){
	speed = 0;
}

if power_up_fr = false{
	bullet_speed = 30;
}

//wallstuck fix && tentacle bounce
move_bounce_solid(false);
if collision_point(x, y, o_Wall2, true, true){
	vspeed *= -1;
}
if collision_point(x, y, o_Wall4, true, true){
	hspeed *= -1;
}
if collision_point(x, y, boss, false, true){
	hp -= 25;
	hspeed *= -1;
	vspeed *= -1;
	speed = 10;
	audio_play_sound(snd_explosion_big, 1, false);
	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
}


if(keyboard_check(ord("A"))){
	image_angle = image_angle + 5;
}

if(keyboard_check(ord("D"))){
	image_angle = image_angle - 5;
}

if(keyboard_check(ord("W"))){
	motion_add(image_angle, 0.15);
}
if(keyboard_check(ord("S"))){
	motion_add(image_angle, -0.15);
}

if(keyboard_check_pressed(vk_space)){
	var inst = instance_create_layer(x,y, "Instances", o_bullet);
	inst.direction = image_angle;
	audio_play_sound(snd_lasershot, 1, false);
}

// health system
if hp <= 0
{
	with (o_game){
		game_over = true;
	}
	
	with (o_game){
		alarm[0] = room_speed * 1;
	}
	
	repeat(10)
	{
	instance_create_layer(x,y,"Instances",debris);
	}

	instance_destroy();
}