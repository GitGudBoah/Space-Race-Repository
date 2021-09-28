//health bar
if com_totolsk.boss_fight_triggered{
	draw_set_alpha(1);

	draw_sprite(spr_totolsk_healthbar3,0,healthbar_x,healthbar_y);
	draw_sprite_stretched(spr_totolsk_healthbar,0,healthbar_x,healthbar_y,min((hp/hp_max) * healthbar_width, healthbar_width), healthbar_height);
	draw_sprite(spr_totolsk_healthbar2,0,healthbar_x,healthbar_y);
}