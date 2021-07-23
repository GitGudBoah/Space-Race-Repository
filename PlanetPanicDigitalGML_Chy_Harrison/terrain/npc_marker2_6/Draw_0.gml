if dahlia2.inrange && dahlia2.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, dahlia2.x - 2.5, dahlia2.y - 405)
	draw_set_alpha(1);
	draw_text(dahlia2.x, dahlia2.y - 400, "Enter")
}

//music
if music2.inrange && music2.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, music2.x - 2.5, music2.y - 405)
	draw_set_alpha(1);
	draw_text(music2.x, music2.y - 400, "Enter")
}

if music2_2.inrange && music2_2.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, music2_2.x - 2.5, music2_2.y - 405)
	draw_set_alpha(1);
	draw_text(music2_2.x, music2_2.y - 400, "Enter")
}

if music2_3.inrange && music2_3.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, music2_3.x - 2.5, music2_3.y - 405)
	draw_set_alpha(1);
	draw_text(music2_3.x, music2_3.y - 400, "Enter")
}

if music2_4.inrange && music2_4.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, music2_4.x - 2.5, music2_4.y - 405)
	draw_set_alpha(1);
	draw_text(music2_4.x, music2_4.y - 400, "Enter")
}