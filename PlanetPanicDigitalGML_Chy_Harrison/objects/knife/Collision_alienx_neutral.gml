other.hp -= 200;

if enemy_manager3.game_over = false{
	if enemy_manager3.target.x > other.x{
		other.x -= 50;
	}
	if enemy_manager3.target.x < other.x{
		other.x += 50;
	}
}

//destroy
audio_play_sound(snd_explosion_small, 1, false);
repeat(3){
	instance_create_layer(x,y,"Instances",debris);
}
instance_destroy();