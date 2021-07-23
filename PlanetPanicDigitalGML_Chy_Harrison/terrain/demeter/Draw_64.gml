//cooldown indicator
if display_cooldown{
	draw_sprite_ext(spr_black_pixel, 1, 5, 34, 135, 25, 0, c_white, 0.75);
	draw_set_alpha(1);
	draw_set_font(font_gametext);
	draw_set_halign(fa_left);
	draw_text(10, 50, cooldown_indicator);
	draw_set_halign(fa_middle);
}