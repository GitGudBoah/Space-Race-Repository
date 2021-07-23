//explosion
jay3_follow.burst_early = false;
instance_create_layer(x + 320, y - 303, "bg", explosion);
audio_play_sound(snd_explosion_big, 1, false);
instance_destroy();