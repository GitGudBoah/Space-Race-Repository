//1
if alive1{
	draw_sprite(spr_healthbar3,0,a_tentacle1.healthbar_x,a_tentacle1.healthbar_y);
	draw_sprite_stretched(spr_healthbar,0,a_tentacle1.healthbar_x,a_tentacle1.healthbar_y,min((a_tentacle1.hp/a_tentacle1.hp_max) * a_tentacle1.healthbar_width, a_tentacle1.healthbar_width), a_tentacle1.healthbar_height);
	draw_sprite(spr_healthbar2,0,a_tentacle1.healthbar_x,a_tentacle1.healthbar_y);
}
//2
if alive2{
	draw_sprite(spr_healthbar3,0,a_tentacle2.healthbar_x,a_tentacle2.healthbar_y);
	draw_sprite_stretched(spr_healthbar,0,a_tentacle2.healthbar_x,a_tentacle2.healthbar_y,min((a_tentacle2.hp/a_tentacle2.hp_max) * a_tentacle2.healthbar_width, a_tentacle2.healthbar_width), a_tentacle2.healthbar_height);
	draw_sprite(spr_healthbar2,0,a_tentacle2.healthbar_x,a_tentacle2.healthbar_y);
}
//3
if alive3{
	draw_sprite(spr_healthbar3,0,a_tentacle3.healthbar_x,a_tentacle3.healthbar_y);
	draw_sprite_stretched(spr_healthbar,0,a_tentacle3.healthbar_x,a_tentacle3.healthbar_y,min((a_tentacle3.hp/a_tentacle3.hp_max) * a_tentacle3.healthbar_width, a_tentacle3.healthbar_width), a_tentacle3.healthbar_height);
	draw_sprite(spr_healthbar2,0,a_tentacle3.healthbar_x,a_tentacle3.healthbar_y);
}
//4
if alive4{
	draw_sprite(spr_healthbar3,0,a_tentacle4.healthbar_x,a_tentacle4.healthbar_y);
	draw_sprite_stretched(spr_healthbar,0,a_tentacle4.healthbar_x,a_tentacle4.healthbar_y,min((a_tentacle4.hp/a_tentacle4.hp_max) * a_tentacle4.healthbar_width, a_tentacle4.healthbar_width), a_tentacle4.healthbar_height);
	draw_sprite(spr_healthbar2,0,a_tentacle4.healthbar_x,a_tentacle4.healthbar_y);
}