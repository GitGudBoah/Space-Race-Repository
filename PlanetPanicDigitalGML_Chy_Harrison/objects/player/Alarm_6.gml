//alternate collision code below

//Wall Bounce
move_bounce_solid(false);
if collision_point(x, y, o_Wall2, true, true){
	vspeed *= -1;
}
if collision_point(x, y, o_Wall4, true, true){
	hspeed *= -1;
}