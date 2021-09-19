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

//menu system
global.current_room = intro;

//UPGRADES: Dash
Dash = false;
//UPGRADES: Volley
Volley = false;
volley_max = 3;
//UPGRADES: Armor (only against bullets)
Armor = false;
armor_regen_delay = 6;
//UPGRADES: Remote Drone
Remote_Drone = false;
Rdrone_cooldown = 6;