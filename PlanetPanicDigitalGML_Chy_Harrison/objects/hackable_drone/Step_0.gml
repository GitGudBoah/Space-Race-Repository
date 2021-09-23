if distance_to_object(player) <= 300{
	inrange = true;
} else{
	inrange = false;
}

//text
if counter = 1{
	speaker = spr_com_blank;
	text = "[You've found a broken Coalition drone.]";
}

if counter = 2{
	if o_game.first_hdrone{
		counter = 3;
	} else{
		speaker = spr_com_glaucus;
		text = "We could dismantle this drone for parts to repair the damage to our ship, or we could harvest its parts for Star Steel.";
	}
}

//decision
if counter = 3{
	speaker = spr_com_blank;
	text = "Repair your ship's damage, or harvest Star Steel?";
	decision = true;
}

if counter = 4{
	if choice = false{
		if player.hp <= player.hp_max - heal_amount{
			player.hp += heal_amount;
		} else{
			player.hp = player.hp_max;
		}
		audio_play_sound(snd_menu_switch, 1, false);
	} else{
		o_game.currency += 10;
		audio_play_sound(snd_explosion_small, 1, false);
	}
	
	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	if o_game.first_hdrone = false{
		o_game.first_hdrone = true;
	}
	if room = open_space{
		npc_marker_ospace.hdrone_dead += 1;
	}
	instance_destroy();
	
	decision = false;
	talking = false;
	counter = 0;
	player.incontrol = true;
}
//

//decision: choosing
if decision{
	if keyboard_check_pressed(ord("D")){
		choice = true;
	}

	if keyboard_check_pressed(ord("A")){
		choice = false;
	}
}