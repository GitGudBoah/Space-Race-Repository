if (!fade) {
	image_yscale += 1;
	audio_play_sound(snd_tentacle_attack, 1, false);
}

if (fade) {
	image_alpha += -.05;
}