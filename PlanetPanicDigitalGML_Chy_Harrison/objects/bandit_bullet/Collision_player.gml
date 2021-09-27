if other.invulnerable = false{
	//UPGRADES: Armor
	if o_game.Armor and other.armored{
		other.armored = false;
		other.alarm[4] = room_speed * other.armor_burst_delay;
		other.hp -= 15
		audio_play_sound(snd_player_armor_struck, 1, false);
	} else{
		other.hp -= 30;
		audio_play_sound(snd_explosion_big, 1, false);
	}
	
	//i_frames
	with(other){
		invulnerable = true;
		image_blend = c_gray;
		alarm[0] = room_speed * 1;
	}
	
	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	instance_destroy();
}