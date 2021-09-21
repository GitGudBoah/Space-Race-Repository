if invulnerable = false && other.reviving = false{
	invulnerable = true;
	image_blend = c_gray;
	alarm[0] = room_speed * 1;
	hp -= 50;

	audio_play_sound(snd_explosion_big, 1, false);

	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}

	other.knockback = true;
	other.alarm[3] = room_speed * other.knockback_duration;
	other.direction = point_direction(player.x, player.y, x, y);
	other.speed = other.knockback_speed;
}