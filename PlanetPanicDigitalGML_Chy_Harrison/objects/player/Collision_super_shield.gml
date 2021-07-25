hp += 45;
audio_play_sound(snd_menu_switch, 1, false);

if player.x > 3500 && player.x < 3700{
	commlink.speaker = spr_com_glaucus;
	commlink.text = "This should keep our pistons pumping a bit longer.";
	commlink.talking = true;
	commlink.alarm[1] = room_speed * 4;
}

repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}
instance_destroy(other);