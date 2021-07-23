//chase the player
if distance_to_object(enemy_manager3.target) <= range && canTrigger{
	if enemy_manager3.target.y = enemy_manager3.target.neutral_floor{
		audio_play_sound(snd_alien_alert_smooth, 1, false);
		encountered = true;
		canTrigger = false;
		canTrigger2 = true;
	}
} else if distance_to_object(enemy_manager3.target) > range && canTrigger2{
	if encountered{
		audio_play_sound(snd_menu_switch, 1, false);
	}
	canTrigger = true;
	canTrigger2 = false;
}

if enemy_manager3.game_over = false && mobile{
	if enemy_manager3.target.y = enemy_manager3.target.neutral_floor && canTrigger = false{
		if enemy_manager3.target.x > x{
			x += speeed;
		}
		if enemy_manager3.target.x < x{
			x -= speeed;
		}
	}
}

//health
if hp <= 0{
	audio_play_sound(snd_explosion_small, 1, false);
	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	instance_destroy();
}