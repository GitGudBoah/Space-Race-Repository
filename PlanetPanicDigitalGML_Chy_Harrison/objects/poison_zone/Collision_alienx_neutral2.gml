if active{
	other.mobile = false;
	other.alarm[0] = room_speed * 2;
	other.image_blend = c_green;
	audio_play_sound(snd_tractor_beam, 1, false);
	repeat(5){
		instance_create_layer(other.x,other.y,"Instances",debris);
	}
}