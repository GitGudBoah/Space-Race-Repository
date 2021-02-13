//fly toward the position of the player when created
direction=point_direction(x,y,t_player.x,t_player.y);
speed = 15;

expired = false;
alarm[0] = room_speed * 1;