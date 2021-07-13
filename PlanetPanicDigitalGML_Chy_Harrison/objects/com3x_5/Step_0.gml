//Alan swaps with Glaucus
if enemy_manager3.game_over = false{
	if alan3.x <= 935 && counter = 0{
		counter = 1;
		alan3.incontrol = false;
		alan3.sprite_index = alan_kneeled;
		talking = true;
	}
}

if counter = 1{
	speaker = spr_com_alan;
	text = "*COUGH* *HACK*";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "*wipes blood from mouth* Shit.";
}

if counter = 3{
	speaker = spr_com_glaucus;
	text = "I've cheered from the sidelines for long enough- why don't I lead the way for now?";
}

if counter = 4{
	speaker = spr_com_alan;
	text = "I don't want you to get yourself killed.";
}

if counter = 5{
	speaker = spr_com_glaucus;
	text = "It won't come to that, so long as you coach me well.";
}

if counter = 6{
	speaker = spr_com_alan;
	text = "Since when did you start giving me orders, tin can?";
	alan3.sprite_index = alan_pistol;
}

if counter = 7{
	speaker = spr_com_demeter;
	text = "Shit, Alan- let somebody help you for once. If anything will get us killed, it's that attitude of yours.";
}

if counter = 8{
	speaker = spr_com_alan;
	text = "I'm not taking responsibility for your death...";
}

if counter = 9{
	speaker = spr_com_alan;
	text = "But I guess I ought to show you the ropes before this damn virus kills me.";
}

if counter = 10{
	speaker = spr_com_glaucus;
	text = "How exciting!";
}

if counter = 11{
	talking = false;
	alan3.incontrol = true;
	counter = 12;
}