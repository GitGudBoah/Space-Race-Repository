if enemy_manager.hostile = false{
	if npc.inrange && npc.available{
		draw_set_font(font_marker);
		draw_set_alpha(0.75);
		draw_sprite(spr_npc_marker, 1, npc.x - 2.5, npc.y - 405)
		draw_set_alpha(1);
		draw_text(npc.x, npc.y - 400, "Enter")
	}

	if npc2.inrange && npc2.available{
		draw_set_font(font_marker);
		draw_set_alpha(0.75);
		draw_sprite(spr_npc_marker, 1, npc2.x - 2.5, npc2.y - 405)
		draw_set_alpha(1);
		draw_text(npc2.x, npc2.y - 400, "Enter")
	}

	if npc3.inrange && npc3.available{
		draw_set_font(font_marker);
		draw_set_alpha(0.75);
		draw_sprite(spr_npc_marker, 1, npc3.x - 2.5, npc3.y - 405)
		draw_set_alpha(1);
		draw_text(npc3.x, npc3.y - 400, "Enter")
	}
}

if enemy_manager.burned = false{
	if npc4.inrange && npc4.available{
		draw_set_font(font_marker);
		draw_set_alpha(0.75);
		draw_sprite(spr_npc_marker, 1, npc4.x - 2.5, npc4.y - 405)
		draw_set_alpha(1);
		draw_text(npc4.x, npc4.y - 400, "Enter")
	}
}

if enemy_manager.hostile{
	if elroy_gun.inrange && elroy_gun.available{
		draw_set_font(font_marker);
		draw_set_alpha(0.75);
		draw_sprite(spr_npc_marker, 1, elroy_gun.x - 2.5, elroy_gun.y - 405)
		draw_set_alpha(1);
		draw_text(elroy_gun.x, elroy_gun.y - 400, "Enter")
	}
}

if enemy_manager.farewell{
	if alice_corpse.inrange && alice_corpse.available{
		draw_set_font(font_marker);
		draw_set_alpha(0.75);
		draw_sprite(spr_npc_marker, 1, alice_corpse.x - 2.5, alice_corpse.y - 405)
		draw_set_alpha(1);
		draw_text(alice_corpse.x, alice_corpse.y - 400, "Enter")
	}
}