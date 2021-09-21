if other.armored = true{
	other.hp -= bullet_damage/2.5;
	audio_play_sound(snd_menu_switch, 1, false);
} else{
	other.hp -= bullet_damage;
	audio_play_sound(snd_explosion_big, 1, false);
}

repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}
instance_destroy();