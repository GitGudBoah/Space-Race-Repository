//project vitals
if vital_ammo > 0{
	vital_ammo -= 1;
	var vital = instance_create_layer(x, y, "Instances", totolsk_vital);
	vital.direction = random_range(0, 360);
	audio_play_sound(snd_enemy_heavy, 1, false);

	alarm[8] = room_speed * 0.25;
}