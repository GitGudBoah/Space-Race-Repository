if index_run.display = index2{
	//do nothing
} else{
	if (mouse_x >= bbox_left and mouse_x <= bbox_right and mouse_y >= bbox_top and mouse_y <= bbox_bottom){
		sprite_index = spr_button2_2;
		if (mouse_check_button_pressed(mb_left)){
			index_run.display = index2;
			sprite_index = spr_button2_3;
			audio_play_sound(snd_menu_switch, 2, false);
		}
	} else{
		sprite_index = spr_button2_1;
	}
}