if room = rm_xenom3{
	//fade to black - transition to next room
	if canTrigger{
		canTrigger = false;
		var inst = instance_create_depth(0, 0, -999, fader);
		inst.destination_room = Victory;
		inst.fadein_speed = 0.2;
		inst.fadeout_speed = 0.2;
		inst.room_swap_delay = 0.2;
	}
}