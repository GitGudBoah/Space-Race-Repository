if player.x > 12150 && cantrigger
{
	activated = true;
	cantrigger = false;
}

if (activated) {
	image_yscale += 1;
	if (alert){
		audio_play_sound(snd_tentacle_attack, 1, false);
		alert = false;
	}
}