if fade = false{
	if image_alpha < 1{
		image_alpha += 0.075;
	}
} else{
	image_alpha -= 0.03;
	if image_alpha <= 0{
		com_intro4.alarm[1] = room_speed * 0.25;
		instance_destroy();
	}
}