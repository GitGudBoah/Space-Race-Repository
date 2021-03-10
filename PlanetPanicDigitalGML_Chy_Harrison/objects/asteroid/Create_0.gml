//fly toward the position of the player when created
sprite_index = choose(spr_asteroid_fragment, spr_asteroid_medium, spr_asteroid);

direction = point_direction(x,y,player.x,player.y);
image_angle = irandom_range(0,359);
speed = 1;

expired = false;
alarm[0] = room_speed * 1;

