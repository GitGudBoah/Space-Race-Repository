audio_play_sound(snd_alarm_low, 1, false);

//spawn enemies
instance_create_layer(3264, 1856, "enemies", intro_bandit);
instance_create_layer(6048, 1280, "enemies", intro_bandit);
instance_create_layer(9408, 1920, "enemies", intro_bandit);
instance_create_layer(2784, 3264, "enemies", intro_bandit);
instance_create_layer(3360, 4896, "enemies", intro_bandit);
instance_create_layer(6016, 5728, "enemies", intro_bandit);
instance_create_layer(8800, 5472, "enemies", intro_bandit);

if challenged{
	instance_create_layer(4224, 1312, "enemies", intro_bandit);
	instance_create_layer(4512, 5600, "enemies", intro_bandit);
	instance_create_layer(8512, 1312, "enemies", intro_bandit);
	instance_create_layer(7488, 5504, "enemies", intro_bandit);
	instance_create_layer(6816, 6048, "enemies", intro_bandit);
	instance_create_layer(7392, 864, "enemies", intro_bandit);
}
instance_create_layer(9600, 3424, "enemies", intro_kandar);