jammed = true;
alarm[3] = room_speed * 5;
audio_play_sound(snd_menu_switch, 1, false);

repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}
instance_destroy(other);