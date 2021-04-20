if (keyboard_check_pressed(vk_space)){
	if (page+1 < array_length(text)){
		page += 1;
	} else {
		instance_destroy();
		creator.myTextbox = noone;
	}
}