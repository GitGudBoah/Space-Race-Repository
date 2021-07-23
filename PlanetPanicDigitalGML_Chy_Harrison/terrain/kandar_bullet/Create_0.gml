speed = 7.4;
if room == rm_enemy{
	speed = 5;
} else if room == intro{
	speed = 20;
} else{
	alarm[0] = room_speed * 4;
}