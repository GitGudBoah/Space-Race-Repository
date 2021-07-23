if inrange && available{
	com2_dahlia.m_counter = 1;
	available = false;
	audio_stop_all();
	audio_play_sound(electronic, 1, true);
	
	music2_2.available = true;
	music2_3.available = true;
	music2_4.available = true;
	
	dahlia2.available = true;
	com2_dahlia.counter = 0;
	com2_dahlia.counter2 = 2;
}