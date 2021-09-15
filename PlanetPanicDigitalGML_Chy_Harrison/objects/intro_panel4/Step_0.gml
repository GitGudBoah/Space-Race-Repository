//if image_alpha < 1{
//	image_alpha += 0.05;
//}

if y < 0{
	y += 30;
} else{
	if canTrigger{
		canTrigger = false;
		instance_create_depth(0, 0, -5, intro_panel5);
	}
}