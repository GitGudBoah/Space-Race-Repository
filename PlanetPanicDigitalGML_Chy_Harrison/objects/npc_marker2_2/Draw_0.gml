if alan.inrange && alan.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, alan.x - 2.5, alan.y - 405)
	draw_set_alpha(1);
	draw_text(alan.x, alan.y - 400, "Enter")
}

if gagarin2_exit.inrange && gagarin2_exit.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, gagarin2_exit.x - 2.5, gagarin2_exit.y - 405)
	draw_set_alpha(1);
	draw_text(gagarin2_exit.x, gagarin2_exit.y - 400, "Enter")
}