//Attis entrance
if killcount >= 7 && intro_spawner.kandar_defeated{
	if intro_spawner.challenged{
		if killcount = 13{
			killcount = 0;
			player.incontrol = false;
			player.speed = 0;
			alarm[0] = room_speed * 1;
			audio_sound_gain(placeholder_music_intro, 0, 3000);
			audio_stop_sound(placeholder_music0);
			audio_sound_gain(placeholder_music0, 0.5, 0);
		}
	} else{
		killcount = 0;
		player.incontrol = false;
		player.speed = 0;
		alarm[0] = room_speed * 1;
		audio_sound_gain(placeholder_music_intro, 0, 3000);
		audio_stop_sound(placeholder_music0);
		audio_sound_gain(placeholder_music0, 0.5, 0);
	}
}

if counter = 1{
	speaker = spr_com_kandar;
	text = "[Promises to return]";
}

if counter = 2{
	speaker = spr_com_demeter;
	text = "Who pissed in his cereal?";
}

if counter = 3{
	speaker = spr_com_jay;
	text = "We should have killed the rat bastard. Who knows what he'll do next.";
}

if counter = 4{
	speaker = spr_com_alan;
	text = "We don't have the time to chase Kandar around the galaxy. For now, let's get inside and unload our loot.";
}

if counter = 5{
	counter = 0;
	attis_entrance.available = true;
	talking = false;
	player.incontrol = true;
}