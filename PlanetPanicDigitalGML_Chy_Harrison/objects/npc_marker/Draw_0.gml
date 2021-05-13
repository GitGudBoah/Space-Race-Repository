if npc.inrange && npc.available{
	draw_set_font(font_marker);
	draw_text(npc.x, npc.y - 400, "Enter")
}

if npc2.inrange && npc2.available{
	draw_set_font(font_marker);
	draw_text(npc2.x, npc2.y - 400, "Enter")
}

if npc3.inrange && npc3.available{
	draw_set_font(font_marker);
	draw_text(npc3.x, npc3.y - 400, "Enter")
}

if enemy_manager.burned = false{
	if npc4.inrange && npc4.available{
		draw_set_font(font_marker);
		draw_text(npc4.x, npc4.y - 400, "Enter")
	}
}

if enemy_manager.hostile{
	if elroy_gun.inrange && elroy_gun.available{
		draw_set_font(font_marker);
		draw_text(elroy_gun.x, elroy_gun.y - 400, "Enter")
	}
}

if enemy_manager.farewell{
	if alice_corpse.inrange && alice_corpse.available{
		draw_set_font(font_marker);
		draw_text(alice_corpse.x, alice_corpse.y - 400, "Enter")
	}
}