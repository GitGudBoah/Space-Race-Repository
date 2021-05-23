if plant_alive{
	if plant.inrange && plant.available{
		draw_set_font(font_marker);
		draw_set_alpha(0.75);
		draw_sprite(spr_npc_marker, 1, plant.x - 2.5, plant.y - 405)
		draw_set_alpha(1);
		draw_text(plant.x, plant.y - 400, "Enter")
	}
}

if insignia.inrange && insignia.available{
	draw_set_font(font_marker);
	draw_set_alpha(0.75);
	draw_sprite(spr_npc_marker, 1, insignia.x - 2.5, insignia.y - 405)
	draw_set_alpha(1);
	draw_text(insignia.x, insignia.y - 400, "Enter")
}