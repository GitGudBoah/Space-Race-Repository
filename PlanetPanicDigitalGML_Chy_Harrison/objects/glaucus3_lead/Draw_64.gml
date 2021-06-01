// health bar
draw_set_alpha(1);

draw_sprite(spr_healthbar3,0,healthbar_x,healthbar_y);
draw_sprite_stretched(spr_healthbar,0,healthbar_x,healthbar_y,min((hp/hp_max) * healthbar_width, healthbar_width), healthbar_height);
draw_sprite(spr_healthbar2,0,healthbar_x,healthbar_y);

//knife_ammo
draw_sprite_ext(spr_black_pixel, 1, 5, 64, 105, 25, 0, c_white, 0.75);
draw_set_alpha(1);
draw_set_font(font_gametext);
draw_set_halign(fa_left);
draw_text(10, 80, knife_ammo_indicator);
draw_set_halign(fa_middle);