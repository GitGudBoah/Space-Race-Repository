if distance_to_object(enemy_manager3.target) > 50{
	x -= 5;
} else{
	if canTrigger{
		canTrigger = false;
		com3h_booth.talking = true;
	}
}