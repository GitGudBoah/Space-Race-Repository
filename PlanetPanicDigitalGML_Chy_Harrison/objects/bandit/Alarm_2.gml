//attack
var inst = instance_create_layer(x, y, "Instances", bandit_bullet);
inst.direction = direction;
var inst1 = instance_create_layer(x, y, "Instances", bandit_bullet);
inst1.direction = direction - 10;
var inst2 = instance_create_layer(x, y, "Instances", bandit_bullet);
inst2.direction = direction + 10;
audio_play_sound(snd_lasershot, 1, false);
alarm[1] = room_speed * post_attack_immobile;
alarm[0] = room_speed * firerate;