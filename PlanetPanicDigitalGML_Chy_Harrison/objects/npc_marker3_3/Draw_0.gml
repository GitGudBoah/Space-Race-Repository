if enemy_manager3.game_over = false{
	if com3x_7.counter = 5{
		//do nothing
	}else if barricade.inrange && barricade.available{
		draw_set_font(font_marker);
		draw_set_alpha(0.75);
		draw_sprite(spr_npc_marker, 1, glaucus3_lead.x - 2.5, glaucus3_lead.y - 405)
		draw_set_alpha(1);
		draw_text(glaucus3_lead.x, glaucus3_lead.y - 400, "Enter")
	}
}

if loverx.inrange && loverx.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, loverx.x - 2.5, loverx.y - 405)
	draw_set_alpha(1);
	draw_text(loverx.x, loverx.y - 400, "Enter")
}