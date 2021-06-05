// 1
if alive1{
	draw_set_alpha(1);
	draw_sprite(spr_healthbar3,0,tentacleb.healthbar_x,tentacleb.healthbar_y);
	draw_sprite_stretched(spr_healthbar,0,tentacleb.healthbar_x,tentacleb.healthbar_y,min((tentacleb.hp/tentacleb.hp_max) * tentacleb.healthbar_width, tentacleb.healthbar_width), tentacleb.healthbar_height);
	draw_sprite(spr_healthbar2,0,tentacleb.healthbar_x,tentacleb.healthbar_y);
}

//2
if alive2{
	draw_set_alpha(1);
	draw_sprite(spr_healthbar3,0,tentacleb2.healthbar_x,tentacleb2.healthbar_y);
	draw_sprite_stretched(spr_healthbar,0,tentacleb2.healthbar_x,tentacleb2.healthbar_y,min((tentacleb2.hp/tentacleb2.hp_max) * tentacleb2.healthbar_width, tentacleb2.healthbar_width), tentacleb2.healthbar_height);
	draw_sprite(spr_healthbar2,0,tentacleb2.healthbar_x,tentacleb2.healthbar_y);
}