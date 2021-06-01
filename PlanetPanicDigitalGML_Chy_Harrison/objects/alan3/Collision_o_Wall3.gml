if room = rm_forest4{
	audio_sound_gain(snd_alarm_low, 0, 2000);
	room_goto(rm_settlement);
}

if room = rm_settlement{
	audio_stop_sound(snd_alarm_low);
	audio_sound_gain(snd_alarm_low, 1, 0);
	room_goto(rm_believer);
}