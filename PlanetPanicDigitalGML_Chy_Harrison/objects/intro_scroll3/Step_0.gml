if appear = 1{
	if image_alpha < 1{
		image_alpha += 0.01;
	} else{
		appear = 2;
		alarm[0] = room_speed * 3.5;
	}
}