if jay3_follow.burst_early_trigger = true{
	jay3_follow.burst_early_trigger = false;
	//poison zone
	var inst = instance_create_layer(x, y - 256, "Instances", poison_zone);
	inst.image_xscale = 5;
	inst.image_yscale = 3;
	instance_destroy();
}