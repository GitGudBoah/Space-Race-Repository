//if image_alpha < 1{
//	image_alpha += 0.05;
//}

if x < 0{
	x += 30;
} else{
	if canTrigger{
		canTrigger = false;
		instance_create_depth(0, 0, -3, intro_panel7);
	}
}