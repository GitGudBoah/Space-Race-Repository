if dodging = false && com2_13.jay_moveit = false{
	hp -= 50;
	audio_play_sound(snd_explosion_small, 1, false);
	repeat(10){
		instance_create_layer(other.x,other.y,"Instances",debris);
	}
	instance_destroy(other);
}