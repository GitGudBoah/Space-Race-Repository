//trigger chamber 1
if o_game.game_over = false{
	if counter = 0 && player.y <= chamber1_ystart{
		chamber_start = true;
		var wall1 = instance_create_layer(6944, 20448, "blackhole", obj_wall_spawn);
		wall1.image_xscale = 12.25;
		audio_play_sound(snd_chamber_start, 2, false);
		counter = 1;
	}
}

//exit chamber 1
if killcount = 10 && counter = 1{
	//spawn next enemies
	chamber_start = false;
	instance_create_layer(2368, 12288, "enemies", blood_hound_space1);
	instance_create_layer(1952, 11392, "enemies", bandit_space1);
	instance_create_layer(2848, 11424, "enemies", bandit_space1);
	instance_create_layer(2400, 10976, "enemies", bandit_space1);
	
	//create exit
	instance_destroy(inst_71DE899);
	audio_play_sound(snd_chamber_end, 2, false);
	
	counter = 2;
}

//trigger chamber 2
if o_game.game_over = false{
	if counter = 2 && player.y <= chamber2_ystart{
		chamber_start = true;
		var wall2 = instance_create_layer(1888, 14176, "blackhole", obj_wall_spawn);
		wall2.image_xscale = 7.75;
		audio_play_sound(snd_chamber_start, 2, false);
		counter = 3;
		//hdrone
		if npc_marker_ospace.hdrone_dead = 0{
			npc_marker_ospace.hdrone_dead += 1;
		}
	}
}

//trigger chamber 2: phase 2
if killcount = 14 && counter = 3{
	//spawn next enemies
	instance_create_layer(4320, 13792, "enemies", hull_breaker_space1);
	instance_create_layer(2016, 9344, "enemies", blood_hound_space1);
	instance_create_layer(608, 9248, "enemies", bandit_space1);
	instance_create_layer(416, 9536, "enemies", bandit_space1);
	instance_create_layer(608, 13824, "enemies", bandit_space1);
	instance_create_layer(416, 13504, "enemies", bandit_space1);
	instance_create_layer(4576, 13504, "enemies", bandit_space1);
	instance_create_layer(4544, 10368, "enemies", bandit_space1);
	instance_create_layer(4576, 11904, "enemies", bandit_space1);
	audio_play_sound(snd_alarm_low, 2, false);
	
	counter = 4;
}

//exit chamber 2
if killcount = 23 && counter = 4{
	//spawn next enemies
	chamber_start = false;
	instance_create_layer(3872, 3616, "enemies", blood_hound_space1);
	instance_create_layer(6880, 1312, "enemies", hull_breaker_space1);
	instance_create_layer(1024, 6112, "enemies", hull_breaker_space1);
	instance_create_layer(5344, 544, "enemies", bandit_space1);
	instance_create_layer(7328, 2272, "enemies", bandit_space1);
	instance_create_layer(4512, 512, "enemies", bandit_space1);
	instance_create_layer(960, 1568, "enemies", bandit_space1);
	instance_create_layer(576, 1984, "enemies", bandit_space1);
	instance_create_layer(704, 5536, "enemies", bandit_space1);
	
	//create exit
	instance_destroy(inst_CB142B5);
	audio_play_sound(snd_chamber_end, 2, false);
	
	counter = 5;
}

//trigger chamber 3
if o_game.game_over = false{
	if counter = 5 && player.y <= chamber3_ystart{
		chamber_start = true;
		var wall3 = instance_create_layer(6848, 8256, "blackhole", obj_wall_spawn);
		wall3.image_xscale = 8.75;
		audio_play_sound(snd_chamber_start, 2, false);
		instance_create_layer(0, 0, "Instances", asteroid_manager);
		counter = 6;
	}
}

//exit chamber 3
if killcount = 32 && counter = 6{
	instance_destroy(asteroid_manager);
	instance_destroy(inst_453AED61);
	audio_play_sound(snd_chamber_end, 2, false);
	
	counter = 7;
}

//leave room
if o_game.game_over = false{
	if counter = 7 && player.y <= 0{
		player.incontrol = false;
		player.speed = 0;
		var inst = instance_create_depth(0, 0, -999, fader);
		inst.destination_room = totolsk_battle;
		audio_sound_gain(placeholder_music12, 0, 2000);
		
		counter = 8;
	}
}