//spawn asteroids
repeat(16){
	instance_create_layer(room_width + 100, spawn_y, "enemies", asteroid_L);
	spawn_y += 500;
}
audio_stop_sound(snd_alarm_high);

alarm [0] = room_speed * 6;