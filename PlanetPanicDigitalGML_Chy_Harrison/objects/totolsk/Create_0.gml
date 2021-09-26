hp_max = 4500;
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
bomb_distance = 1100;

vital_ammo = 6;

aggro = false;

//Create a path
path = path_add();

//explosion collision
can_explode = true;

//unique property: dies twice
reviving = false;
death_counter = 0;