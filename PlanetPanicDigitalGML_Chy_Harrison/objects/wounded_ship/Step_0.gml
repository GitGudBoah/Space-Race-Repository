if distance_to_object(player) <= 300{
	inrange = true;
} else{
	inrange = false;
}

if leaving{
	y += 12;
	if counter = 0{
		counter = 1
		alarm[0] = room_speed * 2;
	}
}