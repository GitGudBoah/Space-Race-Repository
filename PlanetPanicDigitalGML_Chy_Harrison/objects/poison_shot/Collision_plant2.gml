//spawn
if other.x > 2000{
	instance_create_layer(other.x, other.y, "Instances", insect);
	instance_create_layer(other.x - 200, other.y, "Instances", insect);
} else{
	var inst = instance_create_layer(other.x, other.y, "Instances", insect);
	var inst2 = instance_create_layer(other.x - 200, other.y, "Instances", insect);
	inst.speeed = 8;
	inst2.speeed = 8;
}

//destroy
audio_play_sound(snd_tentacle_attack, 1, false);

repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}

instance_destroy(other);
instance_destroy();