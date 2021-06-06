//Alan discovers the SpaceX insignia

if counter = 1 && canTrigger{
	canTrigger = false;
	talking = true;
	alarm[0] = room_speed * 2;
	speaker = spr_com_jay;
	text = "What's the story behind that little invention?";
}

if counter = 3 && canTrigger2{
	canTrigger2 = false;
	talking = true;
	alarm[0] = room_speed * 2;
	speaker = spr_com_blank;
	text = "A haggard voice shouts from the back of the building:";
}

if counter = 5 && canTrigger3{
	canTrigger3 = false;
	talking = true;
	alarm[0] = room_speed * 2;
	speaker = spr_com_jay;
	text = "*frustrated groan* I'm running low on ammo...";
}