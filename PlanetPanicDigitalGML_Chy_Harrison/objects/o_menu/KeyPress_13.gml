//The menu will send you to whichever room
//corresponds with the current, active checkpoint (cp).
//The checkpoint system is held within the music object,
//because it's persistent since the game starts.

switch(menu_index) {
	case 0:
		score = 0;
		if shortcut{
			room_goto(shortcut_destination);
		} else{
			if music.cp{
			room_goto(scene1);
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
		}
		break;
	case 1:
		room_goto(Controls);
		break;
	case 2:
		game_end();
		break;
}