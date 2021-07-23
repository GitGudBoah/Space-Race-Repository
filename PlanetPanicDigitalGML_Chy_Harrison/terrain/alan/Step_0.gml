if distance_to_object(jay2_2) <= 70 && jay2_2.x < x{
	inrange = true;
} else{
	inrange = false;
}

//move
if move && x > 1250{
	x -= 10;
}