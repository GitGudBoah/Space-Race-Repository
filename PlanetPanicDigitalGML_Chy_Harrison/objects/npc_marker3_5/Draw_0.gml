if cultist3_2.inrange && cultist3_2.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, cultist3_2.x - 2.5, cultist3_2.y - 405)
	draw_set_alpha(1);
	draw_text(cultist3_2.x, cultist3_2.y - 400, "Enter")
}