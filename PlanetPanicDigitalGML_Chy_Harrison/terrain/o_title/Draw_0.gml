draw_set_font(font_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_yellow);
draw_set_alpha(1);
draw_text(room_width/2, 100, "Space Race!");

draw_set_font(font_main);
draw_set_alpha(0.5);
draw_text(room_width/2, 145, "Press Enter to Confirm");