if jokester3.inrange && jokester3.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, jokester3.x - 2.5, jokester3.y - 405)
	draw_set_alpha(1);
	draw_text(jokester3.x, jokester3.y - 400, "Enter")
}

if weapon_shop.inrange && weapon_shop.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, weapon_shop.x - 2.5, weapon_shop.y - 405)
	draw_set_alpha(1);
	draw_text(weapon_shop.x, weapon_shop.y - 400, "Enter")
}

if t_booth.inrange && t_booth.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, t_booth.x - 2.5, t_booth.y - 405)
	draw_set_alpha(1);
	draw_text(t_booth.x, t_booth.y - 400, "Enter")
}

if bar.inrange && bar.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, bar.x - 2.5, bar.y - 405)
	draw_set_alpha(1);
	draw_text(bar.x, bar.y - 400, "Enter")
}

if cultist3.inrange && cultist3.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, cultist3.x - 2.5, cultist3.y - 405)
	draw_set_alpha(1);
	draw_text(cultist3.x, cultist3.y - 400, "Enter")
}