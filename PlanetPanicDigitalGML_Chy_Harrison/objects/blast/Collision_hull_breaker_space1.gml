if other.can_explode{
	other.can_explode = false;
	other.alarm[6] = room_speed * 2;
	other.hp -= 75;

	audio_play_sound(snd_explosion_small, 1, false);

	repeat(5){
		instance_create_layer(other.x, other.y,"Instances",debris);
	}

	other.knockback = true;
	other.alarm[3] = room_speed * other.knockback_duration;
	other.direction = point_direction(blast.x, blast.y, other.x, other.y);
	other.speed = other.knockback_speed;
}