if enemy_manager2.game_over = false{
	direction = point_direction(x,y,gagarin.x,gagarin.y);
	
	//follow
	if distance_to_object(gagarin) > stopping_distance{
		speed = 12;
	} else{
		speed = 0;
	}
	
	//shooting
	if reloading = false {
		var inst = instance_create_layer(x, y, "Instances", wailing);
		inst.direction = direction;
		audio_play_sound(snd_explosion_big, 1, false);
		reloading = true;
		alarm[0] = room_speed * firerate;
	}
}

y = 750;

//fade in
image_blend = make_color_hsv(0, 0, value);

if value < 500{
	value += 5;
}