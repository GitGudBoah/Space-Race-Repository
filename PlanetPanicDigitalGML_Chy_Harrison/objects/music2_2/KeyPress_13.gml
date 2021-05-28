if inrange && available{
	com2_dahlia.m_counter = 2;
	available = false;
	audio_stop_all();
	audio_play_sound(hip_hop, 1, true);
	
	music2.available = true;
	music2_3.available = true;
	music2_4.available = true;
	
	dahlia2.available = true;
	com2_dahlia.counter = 0;
	com2_dahlia.counter2 = 2;
}