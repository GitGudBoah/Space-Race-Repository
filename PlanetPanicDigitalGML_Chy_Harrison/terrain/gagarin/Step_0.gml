//sprite flip
if image_angle < -90 and image_angle > -270{
	image_yscale = -0.4;
} else{
	if image_angle < 90 or image_angle > 270{
	image_yscale = 0.4;
	} else{
	image_yscale = -0.4;
	}
}

if image_angle > 360{
	image_angle = 0;
}

if image_angle < -360{
	image_angle = 0;
}

//Break
if(keyboard_check(vk_shift)){
	speed = 0;
}

//power up
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

//movement
if(keyboard_check(ord("A"))){
	image_angle = image_angle + 5;
}

if(keyboard_check(ord("D"))){
	image_angle = image_angle - 5;
}

if(keyboard_check(ord("W"))){
	motion_add(image_angle, 0.25);
}
if(keyboard_check(ord("S"))){
	motion_add(image_angle, -0.25);
}

if stuck{
	speed = 6;
}

if jammed = false{
	if(keyboard_check(vk_space)) && reloading = false{
		var inst = instance_create_layer(x,y, "Instances", g_bullet);
		inst.direction = image_angle;
		audio_play_sound(snd_lasershot, 1, false);
		reloading = true;
		alarm[2] = room_speed * firerate;
	}
}

//speed cap & slow
if speed > 25{
	speed = 25;
}
if speed > 10{
	speed -= 0.1;
}

// health system
if hp > hp_max{
	hp = hp_max;
}

if hp <= 0
{
	enemy_manager2.game_over = true;
	audio_play_sound(snd_explosion_big, 1, false);
	repeat(10)
	{
	instance_create_layer(x,y,"Instances",debris);
	}

	instance_destroy();
}