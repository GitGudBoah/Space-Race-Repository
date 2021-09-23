currency_cost = 100;

if o_game.Volley = true{
	image_index = 1;
} else if o_game.currency < currency_cost{
	image_index = 2;
}