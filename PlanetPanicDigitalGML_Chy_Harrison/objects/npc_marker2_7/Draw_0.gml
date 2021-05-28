if dahlia2.inrange && dahlia2.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, dahlia2.x - 2.5, dahlia2.y - 405)
	draw_set_alpha(1);
	draw_text(dahlia2.x, dahlia2.y - 400, "Enter")
}