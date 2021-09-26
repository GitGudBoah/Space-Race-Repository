if other.can_explode && other.reviving = false{
	other.can_explode = false;
	other.alarm[5] = room_speed * 2;
	other.hp -= 75;

	audio_play_sound(snd_explosion_small, 1, false);

	repeat(5){
		instance_create_layer(other.x, other.y,"Instances",debris);
	}
}