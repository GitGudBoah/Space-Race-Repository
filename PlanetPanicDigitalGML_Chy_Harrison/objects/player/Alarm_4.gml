//UPGRADES: Armor
//spawn an explosion sprite object at our location that damages
//and knocks back enemies it collides with.
if room = totolsk_battle{
	instance_create_layer(x, y, "blackhole", blast);
} else{
	instance_create_layer(x, y, "boundaries", blast);
}

audio_play_sound(snd_explosion_big, 1, false);
alarm[5] = room_speed * o_game.armor_regen_delay;