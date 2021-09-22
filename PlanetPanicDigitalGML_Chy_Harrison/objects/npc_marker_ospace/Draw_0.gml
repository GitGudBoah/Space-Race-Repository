if o_game.game_over = false && hdrone_dead = 0{
	if inst_76ADDE3A.inrange && inst_76ADDE3A.available{
		draw_set_font(font_marker);
		draw_set_alpha(0.75);
		draw_sprite(spr_npc_marker, 1, player.x - 2.5, player.y - 405)
		draw_set_alpha(1);
		draw_text(player.x, player.y - 400, "Enter")
	}
}

//duplicate for new drone triggering when hdrone_dead = 1
if o_game.game_over = false && hdrone_dead = 1{
	if inst_561D8BBF.inrange && inst_561D8BBF.available{
		draw_set_font(font_marker);
		draw_set_alpha(0.75);
		draw_sprite(spr_npc_marker, 1, player.x - 2.5, player.y - 405)
		draw_set_alpha(1);
		draw_text(player.x, player.y - 400, "Enter")
	}
}