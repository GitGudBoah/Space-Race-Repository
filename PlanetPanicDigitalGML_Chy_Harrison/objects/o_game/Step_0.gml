//DO NOT TOUCH BELOW
if room = Map or room = Upgrades or room = Index{
	//do nothing
} else{
	if keyboard_check_pressed(ord("P")){
	    paused = !paused;
	    if paused == false{
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
		
			//animation speed
			var lay_id = layer_get_id("Background");
			var back_id = layer_background_get_id(lay_id);
			if was_animating{
				layer_background_speed(back_id, 1);
			} else{
				layer_background_speed(back_id, 0);
			}
		} else{
			//animation speed
			var lay_id = layer_get_id("Background");
			var back_id = layer_background_get_id(lay_id);
			if layer_background_get_speed(back_id) > 0{
				was_animating = true;
			} else{
				was_animating = false;
			}
			layer_background_speed(back_id, 0);
		}
	}
}

if paused == true{
    alarm[0]++;
    alarm[1]++;
	if keyboard_check_pressed(vk_escape){
		room_goto(Menu);
	}
	// Menu system
	if keyboard_check_pressed(ord("O")){
		//unpause to move around the menus- REMEMBER to repause when you return to the game
		paused = false;
        instance_activate_all();
        surface_free(paused_surf);
        paused_surf = -1;
		
		//animation speed
		var lay_id = layer_get_id("Background");
		var back_id = layer_background_get_id(lay_id);
		if was_animating{
			layer_background_speed(back_id, 1);
		} else{
			layer_background_speed(back_id, 0);
		}
		
		room_persistent = true;
		room_goto(Map);
	}
}