if room = blackhole_city{
	checkpoint_counter = 1;
	
	//exp/currency system
	if first_enter = false{
		first_enter = true;
		currency_save1 = o_game.currency;
	}
}
if room = open_space{
	checkpoint_counter = 2;
	
	//exp/currency system
	if first_enter2 = false{
		first_enter2 = true;
		currency_save2 = o_game.currency;
	}
}
if room = totolsk_battle{
	checkpoint_counter = 3;
	
	//exp/currency system
	if first_enter3 = false{
		first_enter3 = true;
		currency_save3 = o_game.currency;
	}
}