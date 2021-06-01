if enemy_manager3.game_over = false{
	if com3x_4.counter = 5{
		//do nothing
	}else if barricade.inrange && barricade.available{
		draw_set_font(font_marker);
		draw_set_alpha(0.75);
		draw_sprite(spr_npc_marker, 1, alan3.x - 2.5, alan3.y - 405)
		draw_set_alpha(1);
		draw_text(alan3.x, alan3.y - 400, "Enter")
	}
}