/// ONLY ONE OF THIS ENEMY CAN EXIST IN A ROOM AT A TIME
hp_max = 500;
hp = hp_max;
move_speed = 10;

reloading = true;
firerate = 6;
stopping_distance = 150;
attacking = false;
pre_attack_immobile = 0.20;
post_attack_immobile = 0.20;
knockback = false;
knockback_duration = 0.5;
knockback_speed = 30;
max_ammo = 10;
ammo = max_ammo;

aggro = false;

//Create a path
path = path_add();

//explosion collision
can_explode = true;

//unique property: dies twice
reviving = false;
death_counter = 0;