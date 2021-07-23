if state == fade_in{
	image_alpha += fadein_speed;
	if image_alpha >= 1{
		image_alpha = 1;
		//state = fade_out;
		if canTrigger{
			canTrigger = false;
			alarm[0] = room_speed * room_swap_delay;
			if room = rm_hal9{
				if com3h_booth.counter = 6{
					jay3_follow.visible = false;
					demeter3.visible = false;
					alan3.sprite_index = spr_citizen1;
					alan3.y = 1088;
					audio_play_sound(placeholder_music4, 1, false);
				}
				if com3h_booth.counter = 23{
					com3h_booth.counter = 0;
					instance_destroy(alan_empty);
					instance_destroy(jay_empty);
					jay3_follow.visible = true;
					demeter3.visible = true;
					alan3.y = 1024;
					enemy_manager3.target.incontrol = true;
					audio_stop_sound(placeholder_music4);
					audio_sound_gain(placeholder_music4, 1, 0);
					audio_sound_gain(placeholder_music10, 0.22, 2000);
				}
			}
		}
	}
}
else if state == fade_out{
	image_alpha -= fadeout_speed;
	if image_alpha <= 0{
		image_alpha = 0;
		if room = rm_hal9{
			if com3h_bar.counter = 16{
				com3h_bar.talking = true;
			}
			if com3h_booth.counter = 6{
				com3h_booth.talking = true;
			}
		}
		instance_destroy();
	}
}