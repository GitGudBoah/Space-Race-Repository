if e_enter{
	x += 10;
	sprite_index = spr_elroy_run;
	image_xscale = -1;
	y = 1005;
}

if x >= 4370{
	e_enter = false;
	sprite_index = spr_elroy_concerned;
}

if e_exit{
	x -= 10;
	sprite_index = spr_elroy_run;
	image_xscale = 1;
}