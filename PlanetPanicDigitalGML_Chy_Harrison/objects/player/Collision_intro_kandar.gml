if invulnerable = false{
	invulnerable = true;
	image_blend = c_gray;
	alarm[0] = room_speed * 1;
	hp -= 50;

	audio_play_sound(snd_explosion_big, 1, false);

	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}

	direction = point_direction(other.x, other. y, x, y);
	speed = 30;
}