//room_goto(rm_museum2);

//fade to black - transition to next room
if canTrigger{
	canTrigger = false;
	var inst = instance_create_depth(0, 0, -999, fader);
	inst.destination_room = rm_museum2;
	inst.fadein_speed = 0.2;
	inst.fadeout_speed = 0.2;
	inst.room_swap_delay = 0.2;
}