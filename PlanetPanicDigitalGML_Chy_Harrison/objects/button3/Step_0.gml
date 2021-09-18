if index_run.display = index3{
	//do nothing
} else{
	if (mouse_x >= bbox_left and mouse_x <= bbox_right and mouse_y >= bbox_top and mouse_y <= bbox_bottom){
		sprite_index = spr_button3_2;
		if (mouse_check_button_pressed(mb_left)){
			index_run.display = index3;
			sprite_index = spr_button3_3;
			audio_play_sound(snd_menu_switch, 2, false);
		}
	} else{
		sprite_index = spr_button3_1;
	}
}