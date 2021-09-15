//spawn asteroids
repeat(8){
	instance_create_layer(spawn_x, spawn_y, "enemies", asteroid_L);
	spawn_y += 500;
}

alarm [0] = room_speed * 6;