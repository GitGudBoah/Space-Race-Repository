if alive{
	draw_set_alpha(1);
	draw_sprite(spr_healthbar3,0,believer.healthbar_x,believer.healthbar_y);
	draw_sprite_stretched(spr_healthbar,0,believer.healthbar_x,believer.healthbar_y,min((believer.hp/believer.hp_max) * believer.healthbar_width, believer.healthbar_width), believer.healthbar_height);
	draw_sprite(spr_healthbar2,0,believer.healthbar_x,believer.healthbar_y);
}