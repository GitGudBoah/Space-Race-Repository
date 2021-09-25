if counter = 1{
	if opacity < 1{
		opacity += fade_speed;
	} else{
		counter = 2;
		alarm[1] = room_speed * 0.6;
	}
}

if counter = 3{
	if opacity > 0{
		opacity -= fade_speed;
	} else{
		instance_destroy();
	}
}