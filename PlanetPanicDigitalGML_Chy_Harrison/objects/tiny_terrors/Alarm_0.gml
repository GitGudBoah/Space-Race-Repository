//aoe explosion
instance_create_layer(x,y,"Instances", explosion);
audio_play_sound(snd_explosion_big, 1, false);

o_game.alarm[2] = 1;

instance_destroy();