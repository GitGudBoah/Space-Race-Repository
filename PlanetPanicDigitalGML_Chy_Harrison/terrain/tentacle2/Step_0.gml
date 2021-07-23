if (hp <= 0) && (tentacle2_hp.alive1) {
	tentacle2_hp.alive1 = false;
	alarm[0] = true;
}

if (distance_to_object(gagarin) < range) && cantrigger
{
	inrange = true;
	
	//begin boss fight
	com2_6.speaker = spr_com_alan;
	com2_6.text = "Ambush! Stay sharp!";
	com2_6.alarm[1] = room_speed * 1;
	audio_play_sound(snd_alarm_low, 1, true);
	instance_create_layer(11970, 750, "Instances", wailing_horror);
	instance_create_layer(11970, 375, "Instances", wailing_horror2);
	instance_create_layer(11970, 1125, "Instances", wailing_horror3);
	
	cantrigger = false;
}

if (inrange) {
	if (!fade) && image_yscale < 500{
		image_yscale += 1;
		if (alert){
			audio_play_sound(snd_tentacle_attack, 1, false);
			alert = false;
		}
	}
}

if (fade) {
		image_alpha += -.05;
}
