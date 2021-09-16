//spawn reinforcements
var inst1 = instance_create_layer(1600, 1870, "enemies", bandit_bcity);
inst1.aggro = true;
inst1.alarm[0] = room_speed * random_range(0.5, 1.5);
inst1.alarm[4] = room_speed * 0.5;
var inst2 = instance_create_layer(2380, 4370, "enemies", bandit_bcity);
inst2.aggro = true;
inst2.alarm[0] = room_speed * random_range(0.5, 1.5);
inst2.alarm[4] = room_speed * 0.5;
var inst3 = instance_create_layer(6000, 4400, "enemies", bandit_bcity);
inst3.aggro = true;
inst3.alarm[0] = room_speed * random_range(0.5, 1.5);
inst3.alarm[4] = room_speed * 0.5;