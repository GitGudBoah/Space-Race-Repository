if image_alpha < 1{
	image_alpha += 0.05;
} else{
	if canTrigger{
		canTrigger = false;
		com_intro4.talking = true;
	}
}