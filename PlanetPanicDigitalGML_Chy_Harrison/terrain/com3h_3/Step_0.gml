//guy encounter

if counter = 1{
	speaker = spr_com_kandar;
	text = "CHARGE!";
}

if counter = 2{
	talking = false;
	charge = true;
	counter = 3;
}

if counter = 3{
	speaker = spr_com_jay;
	text = "Let's light these dickheads up.";
}

if counter = 4{
	speaker = spr_com_blank;
	text = "[New Ability: Press R to deploy a detonation zone. After 2 seconds, the zone explodes and damages nearby enemies.]";
}

if counter = 5{
	speaker = spr_com_blank;
	text = "[Press R before the zone detonates to create a poison cloud, instead.]";
}

if counter = 6{
	talking = false;
	alarm[0] = room_speed * 4;
	audio_play_sound(snd_lasershot, 1, false);
	instance_create_layer(jay3_follow.x, jay3_follow.y, "Instances", burst_shot);
	counter = 7;
}

if counter = 7{
	speaker = spr_com_blank;
	text = "[Hint: Fight enemies up-close to get the most out of your abilities. Enemy bullets speed up as they travel.]";
}

//New Ability: While a target is affected by poison shot, press E to knife-strike from their position.

if counter = 8{
	counter = 0;
	talking = false;
	enemy_manager3.target.incontrol = true;
	instance_destroy(o_Wall3);
}

//decision: choosing
if decision{
	if keyboard_check_pressed(ord("D")){
		choice = true;
	}

	if keyboard_check_pressed(ord("A")){
		choice = false;
	}
}