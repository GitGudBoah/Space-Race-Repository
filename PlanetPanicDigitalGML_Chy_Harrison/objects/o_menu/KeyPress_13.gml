switch(menu_index) {
	case 0:
		score = 0;
		room_goto(rm_enemy);
		break;
	case 1:
		room_goto(Controls);
		break;
	case 2:
		game_end();
		break;
}