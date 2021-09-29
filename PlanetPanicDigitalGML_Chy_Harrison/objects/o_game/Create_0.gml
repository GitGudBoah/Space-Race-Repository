//change window size and resolution to 2100 x 1500
window_set_size(1050, 750)
alarm[2] = true;
surface_resize(application_surface, 1050, 750);

//
game_over = false;
bullet_speed = 11;
//currency/exp system
currency = 0;
//pause menu
paused = false;
paused_surf = -1;
pausable = false;
was_animating = false;

//menu system
global.current_room = Menu;

//UPGRADES: Dash
Dash = true;
//UPGRADES: Volley
Volley = false;
volley_max = 3;
//UPGRADES: Armor (only against bullets)
Armor = false;
armor_regen_delay = 6;
//UPGRADES: Remote Drone
Remote_Drone = false;
Rdrone_cooldown = 6;
//SAVE ROOMS WHERE UPGRADES ARE UNLOCKED
Armor_unlocked_here = intro;
Volley_unlocked_here = intro;
RDrone_unlocked_here = intro;
Dash_unlocked_here = intro;

//first time interactions
first_hdrone = false;