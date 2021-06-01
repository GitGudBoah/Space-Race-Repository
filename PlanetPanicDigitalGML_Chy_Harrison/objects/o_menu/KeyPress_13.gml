//The menu will send you to whichever room
//corresponds with the current, active checkpoint (cp).
//The checkpoint system is held within the music object,
//because it's persistent since the game starts.

switch(menu_index) {
	case 0:
		score = 0;
		if shortcut{
			audio_stop_all();
			room_goto(shortcut_destination);
		} else{
			if music.cp{
			//fade transition
			if canTrigger{
				canTrigger = false;
				var inst = instance_create_depth(0, 0, -999, fader);
				inst.destination_room = scene1;
				inst.fadein_speed = 0.2;
				inst.fadeout_speed = 0.2;
				inst.room_swap_delay = 0.2;
			}
			//room_goto(scene1);
			}
			if music.cp1{
			room_goto(rm_enemy);
			}
			if music.cp2{
			room_goto(scene9);
			}
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
		}
		break;
	case 1:
		room_goto(Controls);
		break;
	case 2:
		game_end();
		break;
}