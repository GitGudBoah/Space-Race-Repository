if room = rm_level3{
	if music.stations = 1{
		x = 2464;
		y = 7360;
		image_angle = 90;
	}
	if music.stations = 2{
		x = 12800;
		y = 1700;
		image_angle = 180;
	}
}

//shooting
reloading = false;
firerate = 0.15;
ammo = 20;
ammo_max = ammo;
reload_speed = 0.5;
reload_buff = false;
bullet_speed = 30;
spray = 0;
invulnerable = false;

// hp bar
hp = 200;
hp_max = hp;

healthbar_width = 100;
healthbar_height = 12;
healthbar_x = 10;
healthbar_y = 10;

incontrol = true;
rm1 = true;

//UPGRADES: Dash
mid_dash = false;
dash_duration = 1;
//UPGRADES: Volley
volley_charges = 0;
//UPGRADES: Armor
armored = true;
armor_burst_delay = 2;
//UPGRADES: Remote Drone
drone_cooldown = false;