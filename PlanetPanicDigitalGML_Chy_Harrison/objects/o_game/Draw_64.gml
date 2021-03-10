switch(room){
	case rm_enemy:
		draw_set_font(font_main);
		draw_set_color(c_yellow);
		draw_set_alpha(1);
		
		draw_text(900, 20, "Score: "+string(score));
		//draw_text(900, 40, "Lives: "+string(lives));
		if paused == true{
			if !surface_exists(paused_surf){
				if paused_surf == -1{
					instance_deactivate_all(true);}
				paused_surf = surface_create(room_width, room_height);
				surface_set_target(paused_surf);
				draw_surface(application_surface, 0, 0);
				surface_reset_target();}
			else{
		    draw_surface(paused_surf, 0, 0);
		    draw_set_alpha(0.5);
		    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
		    draw_set_alpha(1);
		    draw_set_halign(fa_center);
		    draw_text_transformed_colour(475, 250, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
		    draw_text(475, 300, "Press P to resume game.");
			draw_text(475, 330, "Press escape to return to menu.");
			draw_set_halign(fa_left);}
		}
		break;
	
	case Victory:
	
	case Game_Over:
	
	break;
	
}