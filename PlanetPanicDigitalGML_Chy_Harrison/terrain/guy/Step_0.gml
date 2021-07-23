if distance_to_object(enemy_manager3.target) <= 70 && inrange = false{
	inrange = true;
	alan3.incontrol = false;
	com3h_1.talking = true;
}

if com3h_1.counter > 9{
	x -= 5;
}

if x <= -130{
	instance_destroy();
}