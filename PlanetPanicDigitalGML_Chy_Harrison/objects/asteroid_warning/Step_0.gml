if counter = 0{
	if opacity < 1{
		opacity += fade_speed;
	} else{
		counter = 1;
		appeared += 1;
	}
}

if counter = 1{
	if opacity > 0{
		opacity -= fade_speed;
	} else{
		if appeared >= 3{
			instance_destroy();
		}
		counter = 0;
	}
}