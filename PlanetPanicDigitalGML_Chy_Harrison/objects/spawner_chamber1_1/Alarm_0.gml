//wave 1
audio_play_sound(snd_alien_alert_smooth, 2, false);

instance_create_layer(5696, 1472, "enemies", bandit_smart);
instance_create_layer(3424, 3872, "enemies", bandit_smart);
instance_create_layer(2880, 288, "enemies", bandit_smart);
instance_create_layer(224, 2976, "enemies", bandit_smart);
instance_create_layer(3008, 3936, "enemies", bandit_smart);
instance_create_layer(2496, 220, "enemies", bandit_smart);

instance_create_layer(5120, 1792, "enemies", hull_breaker);