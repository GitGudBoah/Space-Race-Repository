power_up_fr = true;
bullet_speed += 50;
alarm[0] = room_speed * 5;
audio_play_sound(snd_menu_switch, 1, false);

if player.x > 2500 && player.x < 2800{
	commlink.speaker = spr_com_demeter;
	commlink.text = "Ha! Now we're talking!";
}

repeat(10){
	instance_create_layer(x,y,"Instances",debris);
}
instance_destroy(other);