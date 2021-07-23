if jokester.inrange && jokester.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, jokester.x - 2.5, jokester.y - 405)
	draw_set_alpha(1);
	draw_text(jokester.x, jokester.y - 400, "Enter")
}

if flower_shop.inrange && flower_shop.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, flower_shop.x - 2.5, flower_shop.y - 405)
	draw_set_alpha(1);
	draw_text(flower_shop.x, flower_shop.y - 400, "Enter")
}

if museum_entrance.inrange && museum_entrance.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, museum_entrance.x - 2.5, museum_entrance.y - 405)
	draw_set_alpha(1);
	draw_text(museum_entrance.x, museum_entrance.y - 400, "Enter")
}