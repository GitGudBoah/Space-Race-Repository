//attack: stage 2
var inst = instance_create_layer(x, y, "Instances", bandit_bullet);
inst.direction = direction + 20;
var inst1 = instance_create_layer(x, y, "Instances", bandit_bullet);
inst1.direction = direction - 20;
var inst2 = instance_create_layer(x, y, "Instances", bandit_bullet);
inst2.direction = direction + 25;
var inst3 = instance_create_layer(x, y, "Instances", bandit_bullet);
inst3.direction = direction - 25;
var inst4 = instance_create_layer(x, y, "Instances", bandit_bullet);
inst4.direction = direction + 30;
var inst5 = instance_create_layer(x, y, "Instances", bandit_bullet);
inst5.direction = direction - 30;
audio_play_sound(snd_lasershot, 1, false);

alarm[1] = room_speed * post_attack_immobile;
alarm[0] = room_speed * firerate;