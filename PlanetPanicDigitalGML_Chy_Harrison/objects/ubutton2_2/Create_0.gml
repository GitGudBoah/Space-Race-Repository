currency_cost = 100;

if o_game.Remote_Drone = true{
	image_index = 1;
} else if o_game.Volley = false or o_game.currency < currency_cost{
	image_index = 2;
}