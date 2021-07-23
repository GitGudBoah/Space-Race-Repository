//skip cutscenes
if paused == true{
	switch(room){
		case scene1:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp = false;
			music.cp1 = true;
			room_goto(rm_enemy);
			break;
		case scene2:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp = false;
			music.cp1 = true;
			room_goto(rm_enemy);
			break;
		case scene3:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp = false;
			music.cp1 = true;
			room_goto(rm_enemy);
			break;
		//insert level 1
		case scene4:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp1 = false;
			music.cp3 = true;
			room_goto(rm_forest2);
			break;
		case scene5:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp1 = false;
			music.cp3 = true;
			room_goto(rm_forest2);
			break;
		case scene6:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp1 = false;
			music.cp3 = true;
			room_goto(rm_forest2);
			break;
		case scene7:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp1 = false;
			music.cp3 = true;
			room_goto(rm_forest2);
			break;
		case scene8:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp1 = false;
			music.cp3 = true;
			room_goto(rm_forest2);
			break;
		case black_screen3:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp1 = false;
			music.cp3 = true;
			room_goto(rm_forest2);
			break;
		//insert level 1.5
		case scene9:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp2 = false;
			music.cp3 = true;
			room_goto(rm_forest2);
			break;
		case black_screen1:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp2 = false;
			music.cp3 = true;
			room_goto(rm_forest2);
			break;
		case rm_forest:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp2 = false;
			music.cp3 = true;
			room_goto(rm_forest2);
			break;
		//insert level 2
		case rm_crash_site:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp3 = false;
			music.cp4 = true;
			room_goto(rm_forest3);
			break;
		case rm_wailing:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp3 = false;
			music.cp4 = true;
			room_goto(rm_forest3);
			break;
		//insert level 2 wailing horrors
		case black_screen2:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp6 = false;
			music.cp7 = true;
			room_goto(rm_level3);
			break;
		case rm_to_museum:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp6 = false;
			music.cp7 = true;
			room_goto(rm_level3);
			break;
		case rm_museum:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp6 = false;
			music.cp7 = true;
			room_goto(rm_level3);
			break;
		case rm_museum2:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp6 = false;
			music.cp7 = true;
			room_goto(rm_level3);
			break;
		//insert level 3 & xenom
		case beast_encounter:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp10 = false;
			music.cp11 = true;
			room_goto(beast_fight);
			break;
		//insert xenom tendril horror
		case beast_defeat:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp11 = false;
			music.cp7 = true;
			music.stations = 1;
			room_goto(rm_level3);
			break;
		//insert level 3 after xenom
		case rm_hal9:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp7 = false;
			music.cp12 = true;
			room_goto(rm_hal9_2);
			break;
		//insert hal-9
		case black_screen4:
			paused = false;
	        instance_activate_all();
	        surface_free(paused_surf);
	        paused_surf = -1;
			audio_stop_all();
			music.cp12 = false;
			music.cp7 = true;
			music.stations = 2;
			room_goto(rm_level3);
			break;
		//insert level 3 after hal-9
	}
}