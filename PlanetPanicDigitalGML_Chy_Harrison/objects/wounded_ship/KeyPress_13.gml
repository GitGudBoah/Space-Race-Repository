if inrange && available{
	available = false;
	player.incontrol = false;
	player.speed = 0;
	player.image_angle = point_direction(player.x, player.y, x, y);
	com_totolsk.cx = wounded_ship.x - 1575;
	com_totolsk.cy = wounded_ship.y - 1125;
	camera_set_view_target(view_camera[0], wounded_ship);
	com_totolsk.talking = true;
	audio_play_sound(snd_comlink_popup, 2, false);
	
	instance_create_layer(4000, 1024, "enemies", totolsk)
}