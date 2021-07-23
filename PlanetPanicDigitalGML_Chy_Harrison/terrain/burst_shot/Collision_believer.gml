//explosion
if other.mobile = false{
	instance_create_layer(x,y,"Instances",explosion);
} else{
	//poison zone
	var inst = instance_create_layer(x,y,"Instances",poison_zone);
	inst.image_xscale = 5;
	inst.image_yscale = 5;
}

audio_play_sound(snd_explosion_big, 1, false);
repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}
instance_destroy();