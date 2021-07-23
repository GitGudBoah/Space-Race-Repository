if talking{
	draw_set_alpha(1);
	draw_set_font(font_small);

	//portrait
	draw_sprite(speaker, 1, 220, 50);

	//text
	draw_sprite(spr_textbox, 1, 300, 0);
	draw_set_font(font_gametext);
	draw_text_ext(500, 50, text, stringHeight, boxWidth);
}