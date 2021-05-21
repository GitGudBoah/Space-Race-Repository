// 1
if alive1{
	draw_set_alpha(1);
	draw_sprite(spr_healthbar3,0,tentacle2.healthbar_x,tentacle2.healthbar_y);
	draw_sprite_stretched(spr_healthbar,0,tentacle2.healthbar_x,tentacle2.healthbar_y,min((tentacle2.hp/tentacle2.hp_max) * tentacle2.healthbar_width, tentacle2.healthbar_width), tentacle2.healthbar_height);
	draw_sprite(spr_healthbar2,0,tentacle2.healthbar_x,tentacle2.healthbar_y);
}

//2
if alive2{
	draw_set_alpha(1);
	draw_sprite(spr_healthbar3,0,tentacle2_2.healthbar_x,tentacle2_2.healthbar_y);
	draw_sprite_stretched(spr_healthbar,0,tentacle2_2.healthbar_x,tentacle2_2.healthbar_y,min((tentacle2_2.hp/tentacle2_2.hp_max) * tentacle2_2.healthbar_width, tentacle2_2.healthbar_width), tentacle2_2.healthbar_height);
	draw_sprite(spr_healthbar2,0,tentacle2_2.healthbar_x,tentacle2_2.healthbar_y);
}

//3
if alive3{
	draw_set_alpha(1);
	draw_sprite(spr_healthbar3,0,tentacle2_3.healthbar_x,tentacle2_3.healthbar_y);
	draw_sprite_stretched(spr_healthbar,0,tentacle2_3.healthbar_x,tentacle2_3.healthbar_y,min((tentacle2_3.hp/tentacle2_3.hp_max) * tentacle2_3.healthbar_width, tentacle2_3.healthbar_width), tentacle2_3.healthbar_height);
	draw_sprite(spr_healthbar2,0,tentacle2_3.healthbar_x,tentacle2_3.healthbar_y);
}