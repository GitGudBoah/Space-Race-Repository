//hover and click
if (mouse_x >= bbox_left and mouse_x <= bbox_right and mouse_y >= bbox_top and mouse_y <= bbox_bottom){
	image_alpha = 1;
	if upgrades_run.display = upgrades2_1{
		//do nothing
	} else if (mouse_check_button_pressed(mb_left)){
		upgrades_run.display = upgrades2_1;
		audio_play_sound(snd_menu_switch, 2, false);
	}
} else{
	image_alpha = 0.5;
}

//purchase
if upgrades_run.display = upgrades2_1 && keyboard_check_pressed(vk_enter){
	if o_game.Volley = false{
		o_game.Volley = true;
		image_index = 1;
		audio_play_sound(snd_explosion_small, 2, false);
	}
}
//can't buy- add this once we have an exp/currency system