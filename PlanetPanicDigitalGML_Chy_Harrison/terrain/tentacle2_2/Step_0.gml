if (hp <= 0) && (tentacle2_hp.alive2) {
	tentacle2_hp.alive2 = false;
	alarm[0] = true;
}

if (distance_to_object(gagarin) < range) && cantrigger
{
	inrange = true;
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
