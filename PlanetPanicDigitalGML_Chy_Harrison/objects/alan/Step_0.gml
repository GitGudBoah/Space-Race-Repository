if distance_to_object(jay2_2) <= 70 && jay2_2.x < x{
	inrange = true;
} else{
	inrange = false;
}

//move
if move && distance_to_object(gagarin2_exit) > stopping_distance{
	x -= 10;
}