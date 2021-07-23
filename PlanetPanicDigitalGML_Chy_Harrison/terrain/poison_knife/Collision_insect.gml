other.hp -= 25;

if enemy_manager2.game_over = false && other.mobile = false{
	if jay2_2.x > other.x{
		other.x -= 7;
	}
	if jay2_2.x < other.x{
		other.x += 7;
	}
}

//destroy
audio_play_sound(snd_alien_alert_smooth, 1, false);
repeat(3){
	instance_create_layer(x,y,"Instances",debris);
}
instance_destroy();