if counter = 1{
	fire2 = true;
}
if counter = 2{
	fire3 = true;
}
if counter = 3{
	fire4 = true;
}
if counter = 4{
	fire1 = true;
	counter = 1;
} else{
	counter += 1;
}
alarm[0] = room_speed * firerate;