if enemy_manager3.game_over = false{
	x = enemy_manager3.target.x;
}

//attack player
if enemy_manager3.game_over = false && reloading = false{
	instance_create_layer(glaucus3_lead.x, 0, "Instances", beast_attack);
	audio_play_sound(snd_tentacle_attack, 1, false);
	reloading = true;
	alarm[0] = room_speed * firerate;
}

//die
if tentacleb_hp.alive1 = false && tentacleb_hp.alive2 = false{
	room_goto(Victory);
}