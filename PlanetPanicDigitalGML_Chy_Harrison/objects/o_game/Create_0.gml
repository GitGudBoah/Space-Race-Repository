//change window size and resolution to 2100 x 1500
window_set_size(1050, 750)
alarm[2] = true;
surface_resize(application_surface, 1050, 750);

//only used in level 1
game_over = false;

//hud currently deactivated
score = 0;
//pause menu
paused = false;
paused_surf = -1;
pausable = false;
was_animating = false;