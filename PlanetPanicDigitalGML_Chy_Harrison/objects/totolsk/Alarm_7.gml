//attack 3: mortar strike
if reviving = false{
	if o_game.game_over = false{
		bomb_distance = 1100;
		repeat(6){
			instance_create_layer(x + bomb_distance, y, "Instances", mortar_strike);
			instance_create_layer(x + bomb_distance, y + bomb_distance, "Instances", mortar_strike);
			instance_create_layer(x, y + bomb_distance, "Instances", mortar_strike);
			instance_create_layer(x - bomb_distance, y + bomb_distance, "Instances", mortar_strike);
			instance_create_layer(x - bomb_distance, y, "Instances", mortar_strike);
			instance_create_layer(x - bomb_distance, y - bomb_distance, "Instances", mortar_strike);
			instance_create_layer(x, y - bomb_distance, "Instances", mortar_strike);
			instance_create_layer(x + bomb_distance, y - bomb_distance, "Instances", mortar_strike);
			bomb_distance += 1450;
		}
	
		audio_play_sound(snd_alarm_high, 1, false);
		alarm[1] = room_speed * post_attack_immobile;
		alarm[0] = room_speed * firerate;
	}
}