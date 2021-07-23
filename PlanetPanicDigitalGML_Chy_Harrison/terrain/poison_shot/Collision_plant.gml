//spawn
npc_marker2_3.plant_alive = false;
instance_create_layer(other.x, other.y, "Instances", insect);

//destroy
audio_play_sound(snd_tentacle_attack, 1, false);

repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}

instance_destroy(other);
instance_destroy();