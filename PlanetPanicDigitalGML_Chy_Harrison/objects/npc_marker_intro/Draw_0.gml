if o_game.game_over = false{
	if attis_entrance.inrange && attis_entrance.available{
		draw_set_font(font_marker);
		draw_set_alpha(0.75);
		draw_sprite(spr_npc_marker, 1, player.x - 2.5, player.y - 405)
		draw_set_alpha(1);
		draw_text(player.x, player.y - 400, "Enter")
	}
}