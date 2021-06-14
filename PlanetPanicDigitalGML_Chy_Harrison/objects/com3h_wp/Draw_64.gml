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

//decision
if decision{
	//1
	draw_set_alpha(1);
	draw_set_font(font_small);

	//text
	if choice = 0{
		draw_sprite_ext(spr_textbox_choice, 1, 300, 100, 0.5, 0.5, 0, c_white, 1);
	} else{
		draw_sprite_ext(spr_textbox, 1, 300, 100, 0.5, 0.5, 0, c_white, 1);
	}
	draw_set_font(font_gametext);
	draw_text_ext(400, 129, text1, stringHeight, boxWidth);
	
	//2
	draw_set_alpha(1);
	draw_set_font(font_small);

	//text
	if choice = 1{
		draw_sprite_ext(spr_textbox_choice, 1, 500, 100, 0.5, 0.5, 0, c_white, 1);
	} else{
		draw_sprite_ext(spr_textbox, 1, 500, 100, 0.5, 0.5, 0, c_white, 1);
	}
	draw_set_font(font_gametext);
	draw_text_ext(600, 129, text2, stringHeight, boxWidth);
	
	//3
	draw_set_alpha(1);
	draw_set_font(font_small);

	//text
	if choice = 2{
		draw_sprite_ext(spr_textbox_choice, 1, 400, 155, 0.5, 0.5, 0, c_white, 1);
	} else{
		draw_sprite_ext(spr_textbox, 1, 400, 155, 0.5, 0.5, 0, c_white, 1);
	}
	draw_set_font(font_gametext);
	draw_text_ext(500, 184, text3, stringHeight, boxWidth);
}