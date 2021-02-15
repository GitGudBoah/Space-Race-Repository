/// health bar

draw_sprite(spr_healthbar_boarder2,0,healthbar_x,healthbar_y);
draw_sprite_stretched(spr_healthbar,0,healthbar_x,healthbar_y,min((hp/hp_max) * healthbar_width, healthbar_width), healthbar_height);
draw_sprite(spr_healthbar_boarder2,0,healthbar_x,healthbar_y);