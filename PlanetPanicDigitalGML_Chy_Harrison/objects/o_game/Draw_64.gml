if pausable{
	draw_set_font(font_main);
	draw_set_color(c_yellow);
	draw_set_alpha(1);

	//draw score
	//draw_text(900, 20, "Score: "+string(score));

	if paused == true{
		if !surface_exists(paused_surf){
			if paused_surf == -1{
				instance_deactivate_all(true);
			}
			paused_surf = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
			surface_set_target(paused_surf);
			draw_surface(application_surface, 0, 0);
			surface_reset_target();
		} else{
			draw_surface(paused_surf, 0, 0);
		    draw_set_alpha(0.5);
		    draw_rectangle_colour(0, 0, camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), c_black, c_black, c_black, c_black, false);
		    draw_set_alpha(1);
		    draw_set_halign(fa_center);
		    draw_text_transformed_colour(525, 280, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
		    draw_text(525, 330, "Press P to resume game.");
			draw_text(525, 360, "Press O for Map/Upgrades/Index.");
			draw_text(525, 390, "Press ESCAPE to return to menu.");
			//skip cutscenes indicator
			switch(room){
				case scene1:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				case scene2:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				case scene3:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				//insert level 1
				case scene4:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				case scene5:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				case scene6:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				case scene7:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				case scene8:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				case black_screen3:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				//insert level 1.5
				case scene9:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				case black_screen1:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				case rm_forest:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				//insert level 2
				case rm_crash_site:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				case rm_wailing:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				//insert level 2 wailing horrors
				case black_screen2:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				case rm_to_museum:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				case rm_museum:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				case rm_museum2:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				//insert level 3 & xenom
				case beast_encounter:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				//insert xenom tendril horror
				case beast_defeat:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				//insert level 3 after xenom
				case rm_hal9:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				//insert hal-9
				case black_screen4:
					draw_text(475, 360, "Press ENTER to skip to next level.");
					break;
				//insert level 3 after hal-9
			}
		}
	}
}