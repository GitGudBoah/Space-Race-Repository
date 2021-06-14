if state == fade_in{
	image_alpha += fadein_speed;
	if image_alpha >= 1{
		image_alpha = 1;
		//state = fade_out;
		if canTrigger{
			canTrigger = false;
			alarm[0] = room_speed * room_swap_delay;
		}
	}
}
else if state == fade_out{
	image_alpha -= fadeout_speed;
	if image_alpha <= 0{
		image_alpha = 0;
		if room = rm_hal9{
			com3h_bar.talking = true;
		}
		instance_destroy();
	}
}