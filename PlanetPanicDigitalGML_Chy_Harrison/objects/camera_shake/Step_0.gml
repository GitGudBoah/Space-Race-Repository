if room = beast_defeat{
	//do nothing
} else{
	view_x = camera_get_view_x(view_camera[0]);
	view_y = camera_get_view_y(view_camera[0]);
}

camera_set_view_pos(view_camera[0], view_x + random_range(-range, range), view_y + random_range(-range/3, range/3));
range *= 0.9;

if range <= 0.75 && range > 0{
	if room = beast_defeat{
		view_camera[0] = camera_create_view(view_x, view_y, 2100, 1500, 0, -1, -1, -1, 1050, 750);
	} else{
		view_camera[0] = camera_create_view(view_x, view_y, 2100, 1500, 0, enemy_manager3.target, -1, -1, 1050, 750);
	}
	range = 0;
}