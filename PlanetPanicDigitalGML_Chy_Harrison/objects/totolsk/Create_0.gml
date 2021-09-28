hp_max = 5600;
hp = hp_max;
death_counter = 0;
move_speed = 20;

reloading = true;
firerate = 5;
attacking = false;
pre_attack_immobile = 0.15;
post_attack_immobile = 0.15;
knockback = false;
knockback_duration = 0.5;
knockback_speed = 30;

max_ammo = 20;
ammo = max_ammo;
attack_counter = -1;
attack2_direction = 0;
attack3_dir = 90;
counter = 0;

vital_ammo = 6;

aggro = false;

//Create a path
path = path_add();

//explosion collision
can_explode = true;

//unique property: dies twice
reviving = false;
death_counter = 0;

image_angle = 180;

//draw hp bar 848
healthbar_width = 840;
healthbar_height = 12;
healthbar_x = 105;
healthbar_y = 688;