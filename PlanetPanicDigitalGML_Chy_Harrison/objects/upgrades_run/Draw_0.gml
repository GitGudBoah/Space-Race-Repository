draw_sprite(display, 0, 0, 0);
//exp/currency system
draw_set_font(font_upgrades);
draw_set_color(c_orange);
draw_set_halign(fa_left);
draw_text(35, 430, "Star Steel: " + string(o_game.currency));
draw_text(435, 430, "Upgrade Cost: 100");
draw_text_transformed(650, 460, "[Enter]", 0.8, 0.8, 0);

draw_set_halign(fa_middle);