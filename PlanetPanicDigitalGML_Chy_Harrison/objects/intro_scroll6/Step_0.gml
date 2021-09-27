if appear = 1{
	if image_alpha < 1{
		image_alpha += 0.01;
	} else{
		appear = 2;
		can_leave = true;
	}
}

if can_leave && keyboard_check_pressed(vk_enter){
	can_leave = false;
	var inst = instance_create_depth(0, 0, -999, fader);
	inst.destination_room = intro;
	inst.fadein_speed = 0.01;
	inst.fadeout_speed = 0.01;
	inst.room_swap_delay = 1;
}