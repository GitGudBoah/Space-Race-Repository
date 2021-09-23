//exp/currency system
if room = intro{
	currency = 0;
}
if checkpoints.checkpoint_counter = 1{
	currency = checkpoints.currency_save1;
}
if checkpoints.checkpoint_counter = 2{
	currency = checkpoints.currency_save2;
}
//reset upgrades
if room = Armor_unlocked_here{
	Armor = false;
}
if room = Volley_unlocked_here{
	Volley = false;
}
if room = RDrone_unlocked_here{
	Remote_Drone = false;
}
if room = Dash_unlocked_here{
	Dash = false;
}

room_goto(Game_Over);
game_over = false;
global.current_room = Menu;