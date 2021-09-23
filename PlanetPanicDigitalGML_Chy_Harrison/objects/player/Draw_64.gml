//new health bar
draw_set_alpha(1);

draw_sprite(spr_healthbar3,0,healthbar_x,healthbar_y);
draw_sprite_stretched(spr_healthbar,0,healthbar_x,healthbar_y,min((hp/hp_max) * healthbar_width, healthbar_width), healthbar_height);
draw_sprite(spr_healthbar2,0,healthbar_x,healthbar_y);

draw_set_font(font_main);
//UPGRADES: Volley
if o_game.Volley{
	draw_text(52.5, 40, "Charges: " + string(volley_charges));
}

//exp/currency system
draw_text(960, 15, "Star Steel: " + string(o_game.currency));