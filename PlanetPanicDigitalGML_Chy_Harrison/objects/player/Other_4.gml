//unmark room_persistent after returning from menu system
room_persistent = false;

// spawn v_gauge after unlocking
if o_game.Volley && gauge_not_spawned{
	gauge_not_spawned = false;
	instance_create_layer(0, 0, "enemies", v_gauge);
}

//old work--
if room == rm_level3{
	rm1 = false;
}