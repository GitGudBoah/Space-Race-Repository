currency_cost = 100;

if o_game.Armor = true{
	image_index = 1;
} else if o_game.currency < currency_cost{
	image_index = 2;
}

unlocked_in_room = intro;