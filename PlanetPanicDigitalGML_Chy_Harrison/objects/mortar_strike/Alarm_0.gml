instance_create_layer(x, y, "enemies", enemy_explosive);
audio_play_sound(snd_explosion_big, 1, false);
instance_destroy();