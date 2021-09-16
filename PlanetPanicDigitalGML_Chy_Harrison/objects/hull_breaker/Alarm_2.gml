//attack: stage 1
var inst = instance_create_layer(x, y, "Instances", bandit_bullet);
inst.direction = direction;
var inst1 = instance_create_layer(x, y, "Instances", bandit_bullet);
inst1.direction = direction - 5;
var inst2 = instance_create_layer(x, y, "Instances", bandit_bullet);
inst2.direction = direction + 5;
var inst3 = instance_create_layer(x, y, "Instances", bandit_bullet);
inst3.direction = direction - 10;
var inst4 = instance_create_layer(x, y, "Instances", bandit_bullet);
inst4.direction = direction + 10;
audio_play_sound(snd_lasershot, 1, false);

alarm[4] = room_speed * 0.75;