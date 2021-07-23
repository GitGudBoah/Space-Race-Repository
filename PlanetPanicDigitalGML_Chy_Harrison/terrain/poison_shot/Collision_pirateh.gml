//knife-strike
demeter3.target_x = other.x;
demeter3.target_y = other.y;
other.poison_target = true;
demeter3.target_stunned = true;

other.mobile = false;
other.alarm[0] = room_speed * 2;
other.image_blend = c_green;
audio_play_sound(snd_tractor_beam, 1, false);
repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}
instance_destroy();