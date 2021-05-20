switch(menu_index) {
	case 0:
		score = 0;
		//room_goto(scene1);
		room_goto(rm_crash_site);
		break;
	case 1:
		room_goto(Controls);
		break;
	case 2:
		game_end();
		break;
}