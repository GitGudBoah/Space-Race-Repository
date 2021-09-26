//bullet speed = 11 is hard mode; easy mode is 9
speed = o_game.bullet_speed + 8;

if com_totolsk.boss_defeated = false{
	if totolsk.reviving{
		speed = o_game.bullet_speed;
	}
}