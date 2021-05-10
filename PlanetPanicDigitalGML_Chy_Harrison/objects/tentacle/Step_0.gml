if (hp <= 0) && (alive) {
	alive = false;
	alarm[0] = true;
}

if (distance_to_object(player) < range) && cantrigger
{
	inrange = true;
	cantrigger = false;
}

if (inrange) {
	if (!fade) {
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
