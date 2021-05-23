if skeleton2.inrange && skeleton2.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, skeleton2.x - 2.5, skeleton2.y - 405)
	draw_set_alpha(1);
	draw_text(skeleton2.x, skeleton2.y - 400, "Enter")
}

if note.inrange && note.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, note.x - 2.5, note.y - 405)
	draw_set_alpha(1);
	draw_text(note.x, note.y - 400, "Enter")
}