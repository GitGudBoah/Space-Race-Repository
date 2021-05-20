if gagarin2_enter.inrange && gagarin2_enter.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, gagarin2_enter.x - 2.5, gagarin2_enter.y - 405)
	draw_set_alpha(1);
	draw_text(gagarin2_enter.x, gagarin2_enter.y - 400, "Enter")
}

if skeleton.inrange && skeleton.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, skeleton.x - 2.5, skeleton.y - 405)
	draw_set_alpha(1);
	draw_text(skeleton.x, skeleton.y - 400, "Enter")
}