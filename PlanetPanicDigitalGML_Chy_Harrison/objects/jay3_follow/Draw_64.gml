//cooldown indicator
draw_sprite_ext(spr_black_pixel, 1, 5, 94, 135, 25, 0, c_white, 0.75);
draw_set_alpha(1);
draw_set_font(font_gametext);
draw_set_halign(fa_left);
draw_text(10, 110, cooldown_indicator);
draw_set_halign(fa_middle);