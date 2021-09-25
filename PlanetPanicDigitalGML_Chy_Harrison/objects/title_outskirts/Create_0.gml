counter = 0;
opacity = 0;
fade_speed = 0.01;
alarm[0] = room_speed * 1;

audio_play_sound(snd_alien_alert_smooth, 1, false);

//instance_create_layer(0, 0, (layer below other Draw GUI's), asteroid_warning);