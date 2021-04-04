move_bounce_solid(0);

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

//move_wrap(true,true,sprite_width/2);

if (place_meeting(x,y,o_Wall))
{
	speed = 0;	
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