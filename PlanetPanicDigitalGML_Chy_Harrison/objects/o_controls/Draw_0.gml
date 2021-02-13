draw_set_font(font_title);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_yellow);
draw_set_alpha(1);
draw_text(room_width/2, 100, "Controls");

//controls
var i = 0;
repeat (c_lines) {
	draw_set_font(font_main);
	draw_set_color(c_ltgray);
	draw_text(xx, yy + c_h * i, c_line[i]);
	i++;
}

//return
draw_set_color(c_dkgray);
draw_rectangle(place_x - button_w/2, place_y - button_h/2, place_x - button_w/2 + button_w, place_y - button_h/2 + button_h, false);
draw_set_font(font_main);
draw_set_color(c_aqua);
draw_text(place_x, place_y, "Press Enter to Return");