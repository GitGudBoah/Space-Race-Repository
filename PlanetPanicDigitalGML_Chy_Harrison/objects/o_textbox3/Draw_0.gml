/// draw textboxt
draw_sprite(spr_textbox, 0, x,y);






//draw text
draw_set_font(font_gametext);

draw_text_ext(x+200,y+60, text, stringHeight, boxWidth);