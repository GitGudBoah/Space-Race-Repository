//The menu will send you to whichever room
//corresponds with the current, active checkpoint (cp).
//The checkpoint system is held within the music object,
//because it's persistent since the game starts.
o_game.paused = false;

switch(menu_index) {
	case 0:
		o_game.pausable = true;
		score = 0;
		if shortcut{
			audio_stop_all();
			room_goto(shortcut_destination);
		} else{
			if checkpoints.checkpoint_counter = 0{
			//fade transition
			if canTrigger{
				canTrigger = false;
				var inst = instance_create_depth(0, 0, -999, fader);
				inst.destination_room = intro_scroll;
				inst.fadein_speed = 0.2;
				inst.fadeout_speed = 0.2;
				inst.room_swap_delay = 0.2;
			}
			}
			if checkpoints.checkpoint_counter = 0.5{
			//fade in bg music
			audio_stop_all();
			audio_play_sound(placeholder_music0, 1, true);
			audio_sound_gain(placeholder_music0, 0, 0);
			audio_sound_gain(placeholder_music0, 0.5, 1000);
			room_goto(intro);
			}
			if checkpoints.checkpoint_counter = 1{
			room_goto(blackhole_city);
			}
			if checkpoints.checkpoint_counter = 2{
			room_goto(open_space);
			}
			if checkpoints.checkpoint_counter = 3{
			room_goto(totolsk_battle);
			}
			
			//old work
			if music.cp3{
			room_goto(rm_forest2);
			}
			if music.cp4{
			room_goto(rm_forest3);
			}
			if music.cp5{
			room_goto(rm_settlement);
			}
			if music.cp6{
			room_goto(rm_believer);
			}
			if music.cp7{
			room_goto(rm_level3);
			}
			if music.cp8{
			room_goto(rm_xenom);
			}
			if music.cp9{
			room_goto(rm_xenom2);
			}
			if music.cp10{
			room_goto(rm_xenom3);
			}
			if music.cp11{
			room_goto(beast_fight);
			}
			if music.cp12{
			room_goto(rm_hal9_2);
			}
		}
		break;
	case 1:
		room_goto(Controls);
		break;
	case 2:
		game_end();
		break;
}