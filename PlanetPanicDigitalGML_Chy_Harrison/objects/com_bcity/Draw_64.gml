if talking{
	draw_set_alpha(1);
	draw_set_font(font_small);

	//portrait
	draw_sprite(speaker, 1, 240, 50);

	//text
	draw_sprite(spr_textbox, 1, 320, 0);
	draw_set_font(font_gametext);
	draw_text_ext(520, 50, text, stringHeight, boxWidth);
}

//decision
if decision{
	//1
	draw_set_alpha(1);
	draw_set_font(font_small);

	//text
	if choice = 0{
		draw_sprite_ext(spr_textbox_choice, 1, 320, 100, 0.5, 0.5, 0, c_white, 1);
	} else{
		draw_sprite_ext(spr_textbox, 1, 320, 100, 0.5, 0.5, 0, c_white, 1);
	}
	draw_set_font(font_gametext);
	draw_text_ext(420, 129, text1, stringHeight, boxWidth);
	
	//2
	draw_set_alpha(1);
	draw_set_font(font_small);

	//text
	if choice = 1{
		draw_sprite_ext(spr_textbox_choice, 1, 520, 100, 0.5, 0.5, 0, c_white, 1);
	} else{
		draw_sprite_ext(spr_textbox, 1, 520, 100, 0.5, 0.5, 0, c_white, 1);
	}
	draw_set_font(font_gametext);
	draw_text_ext(620, 129, text2, stringHeight, boxWidth);
	
	//3
	draw_set_alpha(1);
	draw_set_font(font_small);

	//text
	if choice = 2{
		draw_sprite_ext(spr_textbox_choice, 1, 420, 155, 0.5, 0.5, 0, c_white, 1);
	} else{
		draw_sprite_ext(spr_textbox, 1, 420, 155, 0.5, 0.5, 0, c_white, 1);
	}
	draw_set_font(font_gametext);
	draw_text_ext(520, 184, text3, stringHeight, boxWidth);
}