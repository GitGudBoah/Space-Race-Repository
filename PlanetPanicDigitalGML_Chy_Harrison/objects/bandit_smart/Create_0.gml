hp = 100;
move_speed = 8;

reloading = true;
firerate = 2.5;
stopping_distance = 350;
attacking = false;
pre_attack_immobile = 0.25;
post_attack_immobile = 0.25;
knockback = false;
knockback_duration = 0.5;
knockback_speed = 30;

alarm[0] = room_speed * random_range(0.5, 1.5);

//Create a path
path = path_add();
alarm[4] = room_speed * 0.5;