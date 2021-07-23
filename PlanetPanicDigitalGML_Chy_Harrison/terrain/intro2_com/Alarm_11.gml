//room_goto(scene9);

//fade to black - transition to next room
var inst = instance_create_depth(0, 0, -999, fader);
inst.destination_room = black_screen3;
inst.fadein_speed = 1;
inst.fadeout_speed = 0.02;
inst.room_swap_delay = 1;